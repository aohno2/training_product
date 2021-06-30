package com.voice.ohnoproduct.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	 Customer customer = new Customer();
	 model.addAttribute("customer", customer);
	 
         return "new-register";
     }


 
 //新規登録情報の保存        
  @PostMapping("/cb/register")
     public String create(@ModelAttribute @Valid Customer customer, BindingResult bindingResult) { 
	  if (bindingResult.hasErrors()) {
	      return "new-register";
	    }
	  
//	  System.out.println(customer);
        customerService.save(customer);
        Long id = customer.getCustomerId();
        System.out.println(customer.getCustomerPassword());
        
         return "redirect:/cb/"+id+"/";
//        return "redirect:/cb/login/";
     }
  


//マイページのget
//@GetMapping("/cb/{id}")
//    
//public String show(@PathVariable Long id, Model model) throws ConnectException {
//	
//	Customer customer = customerService.findOne(id);
//	model.addAttribute("customer", customer);
//	 return "profile";
//    }



@GetMapping("/cb/{id}")

public String show(@PathVariable Long id, Model model) {
	try {
        Customer customer = customerService.findOne(id);
        model.addAttribute("customer", customer);
        
         return "profile";
	}
	catch(Exception e){
		int error = 3;
		model.addAttribute("error", error);
//		return "";
//		System.out.println("error");
//		throw e;
		return "redirect:/cb/login";
		}
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
public String update(@PathVariable Long id, @ModelAttribute @Valid Customer customer, BindingResult bindingResult)  { 
	if (bindingResult.hasErrors()) {
	      return "new-register";
	    }
	
	customer.setCustomerId(id);
	customerService.save(customer);
	return "redirect:/cb/{id}/";
}

//@DeleteMapping("/cb/{id}/delete")
//public String destroy(@PathVariable Long customerId) {
//	 Customer customer = customerService.findOne(customerId);
////	    model.addAttribute("customer", customer);
////	    id = customer.getCustomerId();
//    customerService.delete(customerId);
//    return "redirect:/cb/register/";
//}

@GetMapping("/cb/{id}/delete")
public String delete(@PathVariable Long id) {
//	 Customer customer = customerService.findOne(customerId);
	 System.out.println(id);	    
//	 model.addAttribute("customer", customer);
//	    id = customer.getCustomerId();
   customerService.delete(id);
   return "redirect:/cb/register";
}

//ログイン機能
@PostMapping("/cb/login") 
	public String check(@RequestParam(name="email") String customerMailAddress, @RequestParam(name = "pass") String customerPassword, Model model) {
	Customer result = customerService.getByEmailPass(customerMailAddress, customerPassword);
//	System.out.println(result);
	
	int error = 1;
	if (result != null) {
		Long id = result.getCustomerId();
		return "redirect:/cb/"+id+"/";
	}
	else {
	error = 2;
	model.addAttribute("error", error);
	
	return "login";
	}

}
//@Pathvariable 値を取りたいときに使う
//@RequestParam 

@GetMapping("ajax/test")
public String ajax(Model model) {
	List<Customer> listCustomer =customerService.findAll();
	model.addAttribute("listCustomer",listCustomer );
    return "ajax";
}

}
