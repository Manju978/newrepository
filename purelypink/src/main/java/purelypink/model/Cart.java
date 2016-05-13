package purelypink.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.IndexColumn;

@Entity
@Table(name="cartdetails")
public class Cart {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="cart_id")
	private int cart_ID;
	
	@ManyToOne(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
	@JoinColumn(name="item_id")
	private Item item;
	
	
	@OneToMany(cascade={CascadeType.ALL})
	@JoinColumn(name="cart_id")
	private List<Item> cart_items;
	
	
	public Cart() {
		// TODO Auto-generated constructor stub
	}
	
	public int getCart_ID() {
		return cart_ID;
	}
	public void setCart_ID(int cart_ID) {
		this.cart_ID = cart_ID;
	}
	
	public List<Item> getCart_items() {
		return cart_items;
	}
	public void setCart_items(List<Item> cart_items) {
		this.cart_items = cart_items;
	}
	
	public void setItem(Item item) {
		this.item = item;
	}
	
	public Item getItem() {
		return item;
	}
}
