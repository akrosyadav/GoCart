package com.niit.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.CartDao;
import com.niit.model.Cart;
import com.niit.service.CartService;

@Service
public class CartServiceImpl implements CartService{

	@Autowired
	private CartDao cd;

	public Cart getCartById(int cartId) {
		return cd.getCartById(cartId);
	}
	
}
