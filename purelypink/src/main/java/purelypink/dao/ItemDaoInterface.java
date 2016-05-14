package purelypink.dao;

import purelypink.model.Cart;
import purelypink.model.Item;

public interface ItemDaoInterface 
{
	 void addCartItem(Item item);

	    void removeCartItem(Item item);

	    void removeAllCartItems(Cart cart);

	    Item getCartItemByProductId(int productId);

}
