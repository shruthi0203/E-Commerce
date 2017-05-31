package com.niit.model;

import java.util.HashMap;

public class Cart {
	HashMap<String, Integer> cartItems;

	public Cart() {
		cartItems = new HashMap<>();
	}

	public HashMap<String, Integer> getCartItems() {
		return cartItems;
	}

	public void setCartItems(HashMap<String, Integer> cartItems) {
		this.cartItems = cartItems;
	}

	public void addToCart(String name, int price) {
		cartItems.put(name, price);
	}

	public String getname() {
		// TODO Auto-generated method stub
		return null;
	}
	
	

}
