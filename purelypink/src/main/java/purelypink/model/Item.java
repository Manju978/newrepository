package purelypink.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="itempurchased")
public class Item {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="item_id")
	private int item_Id;
	
	@ManyToOne
	@JoinColumn(name="cart_id",insertable=false,updatable=false,nullable=false)
	private Cart cart;
	
	@OneToOne 
	@JoinColumn(name="prod_id")
	ProductModel product;
	
	private int prod_Qty;
	
	public Item() {
		// TODO Auto-generated constructor stub
	}

	public int getItem_Id() {
		return item_Id;
	}

	public void setItem_Id(int item_Id) {
		this.item_Id = item_Id;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}
	
	public Cart getCart() {
		return cart;
	}
	
	public int getProd_Qty() {
		return prod_Qty;
	}

	public void setProd_Qty(int prod_Qty) {
		this.prod_Qty = prod_Qty;
	}
	
	public void setProduct(ProductModel product) {
		this.product = product;
	}
	
	public ProductModel getProduct() {
		return product;
	}
}
