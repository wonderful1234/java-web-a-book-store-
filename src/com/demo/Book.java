package com.demo;
import java.io.Serializable;
public class Book implements Serializable{
	private String pname;
	private double price;
	public String getPname() {
	     return pname;
  }
  public void setPname(String pname) {
	     this.pname = pname;
  }
  public double getPrice() {
	     return price;
  }
  public void setPrice(double price) {
	     this.price = price;
  }
}
