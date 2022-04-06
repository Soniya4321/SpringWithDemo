package com.bosch.project.bean;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name="Product_Table")
public class Product implements Serializable{
	@Id
	@GeneratedValue
	private int productId;
	 @Lob
	    @Column(name="PRODUCT_IMAGE", nullable=false, columnDefinition="mediumblob")
	 private byte[] image;
	
	 @Column(name="PRODUCT_NAME", nullable=false)
	private String productName;
	 @Column(name="PRODUCT_SIZE")
	private int size;
	 @Column(name="QUANTITY", nullable=false)
	private int quantity;
	 @Column(name="PRICE", nullable=false)
	private double price;
	 @Column(name="PERSONCATEGORY", nullable=false)
	private String personCategory;
	 @Column(name="ITEMCATEGORIES_NAME", nullable=false)
	private String itemCategories;
	
	public byte[] getImage() {
		return image;
	}
	public void setImage(byte[] image) {
		this.image = image;
	}
	
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getPersonCategory() {
		return personCategory;
	}
	public void setPersonCategory(String personCategory) {
		this.personCategory = personCategory;
	}
	public String getItemCategories() {
		return itemCategories;
	}
	public void setItemCategories(String itemCategories) {
		this.itemCategories = itemCategories;
	}
	

}
