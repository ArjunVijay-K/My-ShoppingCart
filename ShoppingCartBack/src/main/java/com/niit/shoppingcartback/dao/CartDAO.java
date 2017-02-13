package com.niit.shoppingcartback.dao;

import java.util.List;

import com.niit.shoppingcartback.model.Cart;

public interface CartDAO {
	public List<Cart> getAllCart();
	   public  List<Cart> getCart(String username);
	   public void insertCart(Cart cart);
	   public void UpdateCart(Cart cart);
	   public void deleteCart(String id);
	   public void deleteallCart(Cart cart);
	
}
