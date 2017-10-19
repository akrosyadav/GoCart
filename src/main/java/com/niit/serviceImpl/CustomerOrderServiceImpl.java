package com.niit.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.CustomerOrderDao;
import com.niit.model.Cart;
import com.niit.model.CartItem;
import com.niit.model.CustomerOrder;
import com.niit.service.CartService;
import com.niit.service.CustomerOrderService;

@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {

	@Autowired
	private CustomerOrderDao customerOrderDao;
	
	@Autowired
	private CartService cartService;
	
	public void addCustomerOrder(CustomerOrder customerOrder) {
		customerOrderDao.addCustomerOrder(customerOrder);		
	}

	public double getCustomerOrderGrandTotal(int cartId) {
		// TODO Auto-generated method stub
				Cart cart = cartService.getCartById(cartId);
				List<CartItem> cartItems = cart.getCartItems();
				double grandTotal = 0.0;
				for (CartItem cartItem : cartItems) {
					grandTotal = grandTotal + cartItem.getTotalPrice();
				}
				return grandTotal;
				// update cart set grandtotal=? where cartid=?
	}

}
