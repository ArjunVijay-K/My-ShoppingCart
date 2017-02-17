package com.niit.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.niit.shoppingcartback.dao.CartDAO;
import com.niit.shoppingcartback.dao.ProductDAO;
import com.niit.shoppingcartback.dao.UserDAO;
import com.niit.shoppingcartback.model.Cart;
import com.niit.shoppingcartback.model.Product;
import com.niit.shoppingcartback.model.User;

@Controller
public class CartController {
	
	@Autowired
	private Cart cart;
	
	@Autowired
	private CartDAO cartDAO;
	
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private Product product;
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private User user;
	
	@RequestMapping ("/productDetails/{id}")
	public ModelAndView productDetails(@PathVariable("id") String id){
		ModelAndView mv = new ModelAndView("productDetails");
		 product = productDAO.get(id);
		
		mv.addObject("product",product );
		mv.addObject("userloggedin",true );
		
		mv.addObject("isProductClicked", true);
		
		
		return mv;
	}
	
	/*@RequestMapping("/order/{user_name}")
	public String placeorder(@PathVariable("user_name") String user_name){
		
		return "redirect:/checkout?user_name"+user_name;
		
	}*/
	
	@RequestMapping("/viewcart")
	public String viewcart(){
		return "myCart";
	}
	
	@RequestMapping(value="/refreshcart/{emailid}", produces="application/json")
	public @ResponseBody List<Cart> refreshCartItem(@PathVariable("emailid") String emailid){
		return cartDAO.list(emailid);
	}
	
	@RequestMapping(value="/addtocart/{itemId}" , method = RequestMethod.PUT)
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public String addtocart(@PathVariable("itemId") String itemId,Principal pr){
		Product product = productDAO.get(itemId);
		 user = userDAO.getByEmail(pr.getName());
		
		cart.setUsername(user.getUsername());
		cart.setProduct_Name(product.getProduct_Name());
		cart.setUsersId(user.getUsersId());
		cart.setEmailid(pr.getName());
		cart.setStatus("N");
		cart.setProduct_Id(product.getProduct_Id());
		cart.setPrice(product.getProduct_Price());
		cart.setQuantity(1);
		System.out.println("inside insert cartController");
		cartDAO.saveOrUpdate(cart);
		return "redirect:/viewcart";
	}
	@RequestMapping(value="/removeItemFromCart/{cart_id}")
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void removeItemFromCart(@PathVariable("cart_id") String cart_id){
		cartDAO.delete(cart_id);
	}
	
}