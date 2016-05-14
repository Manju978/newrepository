package purelypink.service;

import purelypink.model.Cart;
import purelypink.model.Item;

public interface ItemServiceInterface {
	void addCartItem(Item item);

    void removeCartItem(Item item);

    void removeAllCartItems(Cart cart);

    Item getCartItemByProductId(int productId);

}
