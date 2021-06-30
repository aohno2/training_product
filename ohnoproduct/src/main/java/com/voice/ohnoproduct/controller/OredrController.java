package com.voice.ohnoproduct.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.voice.ohnoproduct.entity.Order;
import com.voice.ohnoproduct.entity.OrderId;
import com.voice.ohnoproduct.service.OrderService;

@Controller
public class OredrController {
	@Autowired
    private OrderService orderService;
	
	@PostMapping("/cb/{id}/book")
	
	public String addOrder(@RequestParam("buyCheck") List<String> bookIds ,@PathVariable Long id,Model model){
//		if(buyCheck == "F") {
//			return "redirect:/cb/"+id+"/book";
//		}
		
		for(String bookIdStr : bookIds)	{
			
		   long bookIdLong = Long.parseLong(bookIdStr);
		   OrderId orderId = new OrderId(id,bookIdLong);
		   Order newOrder = new Order(orderId);
		   orderService.save(newOrder);
	}

		System.out.println(bookIds);	    
//	    return "my-booklist";
		return "redirect:/cb/"+id+"/book/list";
		}
	
	
	
	//マイブックのget
	@GetMapping("/cb/{id}/book/list")
    public String index(@PathVariable Long id,Model model) {
        List<Object[]> orders = orderService.findCurrent(id);
        model.addAttribute("orders", orders); 
       model.addAttribute("customerId", id);
       System.out.println(orders);
       System.out.println(id);
        return "my-booklist"; 
    }
}


