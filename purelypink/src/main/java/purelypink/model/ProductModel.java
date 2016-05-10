package purelypink.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@Table(name = "pinkproducts")
public class ProductModel implements Serializable
{

@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int pdctID;
private String category;
private String brand;
private String price;

 public ProductModel() 
{
	// TODO Auto-generated constructor stub
	
}
 public int getPdctID() 
 {
		return pdctID;
	}
public void setPdctID(int pdctID) {
	System.out.println("set ID called");
	pdctID = pdctID;
	
}
public String getCategory() {
	return category;
}
public void setCategory(String category) {
	System.out.println("set category called");
	category = category;
}
public String getBrand() {
	return brand;
}
public void setBrand(String brand) {
	System.out.println("set Brand called");
	brand = brand;
}
public String getPrice() {
	return price;
}
public void setPrice(String price) {
	System.out.println("set Price called");
	price = price;
 }
}
