package com.niit.shoppingcartback.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;



@Entity
@Table(name="cart")
@Component
public class Cart {
	
	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.AUTO)
	private String cart_id;
	@Column
private String productName;
	@Column
	private String user_name;
	
@Column
private String usersId ;
@Column
private String product_Id;


	public String getCart_id() {
	return cart_id;
}
public void setCart_id(String i) {
	this.cart_id = i;
}
public String getProductName() {
	return productName;
}
public void setProductName(String productName) {
	this.productName = productName;
}
public String getUser_name() {
	return user_name;
}
public void setUser_name(String user_name) {
	this.user_name = user_name;
}
public String getUsersId() {
	return usersId;
}
public void setUsersId(String usersId) {
	this.usersId = usersId;
}
public String getProduct_Id() {
	return product_Id;
}
public void setProduct_Id(String product_Id) {
	this.product_Id = product_Id;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
	@Column
private int quantity;
	@Column
private int price;
	
	
	
}