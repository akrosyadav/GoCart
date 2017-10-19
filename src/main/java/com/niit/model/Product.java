
package com.niit.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;
import org.springframework.web.multipart.MultipartFile;
import com.fasterxml.jackson.annotation.JsonIgnore;


@Entity
public class Product implements Serializable  {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int pid;
	
	
	private String name;	
	private String description;
	private int price;
	private int quantity;

	@Transient                // Not persist/save in database.just on server.
	private MultipartFile image;
	
	
	@ManyToOne					/*(cascade=CascadeType.ALL )*/
    @JoinColumn(name = "cid")
    @JsonIgnore
    private Category category;
	
	@ManyToOne					/*(cascade=CascadeType.ALL )*/
    @JoinColumn(name = "id")
    @JsonIgnore
    private Supplier supplier;
	
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}

	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public Supplier getSupplier() {
		return supplier;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	
	
}
