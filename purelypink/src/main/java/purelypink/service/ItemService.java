package purelypink.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import purelypink.dao.ItemDao;
import purelypink.model.Cart;
import purelypink.model.Item;

@Service
public class ItemService 
{
	 @Autowired
	    private ItemDao itemDao;

	    public void addCartItem(Item item){
	        itemDao.addCartItem(item);
	    }

	    public void removeCartItem(Item item){
	        itemDao.removeCartItem(item);
	    }

	    public void removeAllCartItems(Cart cart){
	        itemDao.removeAllCartItems(cart);
	    }

	    public Item getCartItemByProductId(int productId){
	        return itemDao.getCartItemByProductId(productId);
	    }


}
