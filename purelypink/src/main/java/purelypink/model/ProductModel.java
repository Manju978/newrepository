package purelypink.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.web.multipart.MultipartFile;

@SuppressWarnings("serial")
@Entity
@Table(name = "pinkproducts")
public class ProductModel implements Serializable
{

@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int pdctID;
@NotNull
@Size(min=5,max=20,message="Please enter a product category having letters between 5 to 20")
private String category;
@NotNull
@Size(min=1,max=20,message="should not be blank")
private String brand;
public int getPdctID() {
	return pdctID;
}

public void setPdctID(int pdctID) {
	this.pdctID = pdctID;
}

public String getCategory() {
	return category;
}

public void setCategory(String category) {
	this.category = category;
}

public String getBrand() {
	return brand;
}

public void setBrand(String brand) {
	this.brand = brand;
}

public String getPrice() {
	return price;
}

public void setPrice(String price) {
	this.price = price;
}

private String price;

 public ProductModel() 
{
	 
 }
}
