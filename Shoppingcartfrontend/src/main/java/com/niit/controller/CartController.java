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
	ProductDAO productDAO;
	
	@Autowired
	Product product;
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	User user;
	
	@RequestMapping ("/productDetails/{id}")
	public ModelAndView productDetails(@PathVariable("id") String id){
		ModelAndView mv = new ModelAndView("productDetails");
		Product product = productDAO.get(id);
		
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
	
	@RequestMapping("/refreshcart/{email}")
	public @ResponseBody List<Cart> refreshCartItem(@PathVariable("email") String email){
		
		User user = userDAO.getByEmail(email);
		
		return cartDAO.getCart(user.getUsername());
	}
	
	@RequestMapping(value="/addtocart/{itemId}" , method = RequestMethod.PUT)
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void addtocart(@PathVariable("itemId") String itemId,Principal pr){
		Product product = productDAO.get(itemId);
		User user = userDAO.getByEmail(pr.getName());
		
		cart.setUser_name(user.getUsername());
		cart.setProductName(product.getProduct_Name());
		cart.setUsersId(user.getUsersId());
		cart.setProduct_Id(product.getProduct_Id());
		cart.setPrice(product.getProduct_Price());
		cart.setQuantity(1);
		System.out.println("inside insert cartController");
		cartDAO.insertCart(cart);
	}
	@RequestMapping(value="/removeItemFromCart/{cart_id}")
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void removeItemFromCart(@PathVariable("cart_id") String cart_id){
		cartDAO.deleteCart(cart_id);
	}
	
}