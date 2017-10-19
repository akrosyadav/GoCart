package com.niit.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Customer implements Serializable{

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int custid;
	@NotEmpty (message = "The customer firstname must not be null")
	private String firstname;
	@NotEmpty (message = "The customer lastname must not be null")
	private String lastname;
	
	 @Email (message = "The customer email must not be null")
	private String email;
	
	private String phoneno;
	
	@NotEmpty (message = "The customer username must not be null")
	private String username;
	@NotEmpty (message = "The customer password must not be null")
	private String password;
	
	@OneToOne
	@JoinColumn(name="billId")
	private BillingAddress billingAddress;
	
	@OneToOne
	@JoinColumn(name="shipId")
	private ShippingAddress shippingAddress;
	
	@OneToOne
	@JoinColumn(name="userid")
	private User user;
	
	@OneToOne
	@JoinColumn(name="cartId")
	@JsonIgnore
	private Cart cart;
	
	public int getCustid() {
		return custid;
	}
	public void setCustid(int custid) {
		this.custid = custid;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public BillingAddress getBillingAddress() {
		return billingAddress;
	}
	public void setBillingAddress(BillingAddress billingAddress) {
		this.billingAddress = billingAddress;
	}
	public ShippingAddress getShippingAddress() {
		return shippingAddress;
	}
	public void setShippingAddress(ShippingAddress shippingAddress) {
		this.shippingAddress = shippingAddress;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	
	
}
