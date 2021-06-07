package com.voice.ohnoproduct.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.voice.ohnoproduct.entity.Customer;
import com.voice.ohnoproduct.service.CustomerService;

@Controller
public class CustomerController {
	 @Autowired
     private CustomerService customerService;
  
  //ログイン画面のget
  @GetMapping("/cb/login")
     public String login(Model model) {
         return "login";
     }

 //新規登録画面のget
 @GetMapping("/cb/register")
     public String register(Model model) {
         return "new-register";
     }


 
 //新規登録情報の保存        
  @PostMapping("/cb/register")
     public String create(@ModelAttribute Customer customer) { 
	  System.out.println(customer);
        customerService.save(customer);
        Long id = customer.getCustomerId();
        
         return "redirect:/cb/"+id+"/";
     }
//　マイページのget
@GetMapping("/cb/{id}")
    public String show(@PathVariable Long id, Model model) {
        Customer customer = customerService.findOne(id);
        model.addAttribute("customer", customer);
         return "profile";
    }

//マイページ編集のget
@GetMapping("/cb/{id}/edit")
public String edit(@PathVariable Long id, Model model) {
    Customer customer = customerService.findOne(id);
    model.addAttribute("customer", customer);
    id = customer.getCustomerId();
    return "profile-edit";
}

//変更情報の保存
@PostMapping("/cb/{id}")
public String update(@PathVariable Long id, @ModelAttribute Customer customer)  { 
	customer.setCustomerId(id);
	customerService.save(customer);
	return "redirect:/cb/{id}/";
}

@DeleteMapping("/cb/{id}/delete")
public String destroy(@PathVariable Long id, Model model) {
//	 Customer customer = customerService.findOne(id);
//	    model.addAttribute("customer", customer);
//	    id = customer.getCustomerId();
    customerService.delete(id);
    return "redirect:/cb/register/";
}

}
