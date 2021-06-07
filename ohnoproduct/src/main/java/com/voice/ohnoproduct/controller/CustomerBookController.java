package com.voice.ohnoproduct.controller;

import org.springframework.stereotype.Controller;

@Controller
public class CustomerBookController {
	
 
// //　マイページのget
// @GetMapping("/cb/{id}")
//     public String show(@PathVariable Long id, Model model) {
//         Customer customer = cbs.findOne(id);
//         model.addAttribute("customer", customer);
//         return "profile";
//     }
//     //未完成　マイページの編集のget
// @GetMapping("/cd/{id}/edit")
//     public String edit(@PathVariable Long id, Model model) { // ⑤
//         Customer customer = cbs.findOne(id);
//         model.addAttribute("customer", customer);
//         return "profile-edit";
//     }
//
//     //マイページ変更保存
//     @PutMapping("{id}")
// public String update(@PathVariable Long id, @ModelAttribute Customer customer) {
//     customer.setId(id);
//     cbs.save(customer);
//     return "redirect:/players";
// }
//
// 
//  //本の新規登録画面   
//  @GetMapping("/cb/{id}/register/book")
//     public String select(Model model) {
//         List<Book> books = cbs.findAll();
//         model.addAttribute("book", book); 
//         return "book.list"; 
//     }
//  
//  //本の登録情報保存
// @PostMapping
// public String create(@ModelAttribute Book book) { // ⑥
//     cbs.save(book);
//     return "redirect:/cb/{id}/book"; // ⑦
// } 
//
//  //,マイブック画面  SQL直す必要あり  
//  @GetMapping("/cb/{id}/book")
//     public String select(Model model) {
//         List<Book> books = cbs.findAll();
//         model.addAttribute("books", books); 
//         return "book.list"; 
//     }
//  
//  //マイブック変更画面
// @GetMapping("/cd/{id}/book/edit")
//     public String edit(@PathVariable Long id, Model model) { // ⑤
//         Player player = cbs.findOne(id);
//         model.addAttribute("player", player);
//         return "book.list.edit";
//     }
//
// //本の登録情報更新
// @PutMapping("{id}")
// public String update(@PathVariable Long id, @ModelAttribute Player player) {
//     player.setId(id);
//     playerService.save(player);
//     return "redirect:/book.list";
// } 
//
//
//
//  
//  //退会
//  @DeleteMapping("/players/{id}")
//     public String destroy(@PathVariable Long id) {
//         service.delete(id);
//         return "redirect:/ohno.login";
//     }
}
