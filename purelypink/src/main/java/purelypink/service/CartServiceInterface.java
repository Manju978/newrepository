package purelypink.service;

import purelypink.model.Cart;

public interface CartServiceInterface 
{
	Cart getCartById(int cartId);

    void update(Cart cart);

}
