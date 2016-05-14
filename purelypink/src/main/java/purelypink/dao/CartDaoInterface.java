package purelypink.dao;

import java.io.IOException;

import purelypink.model.Cart;

public interface CartDaoInterface 
{

	    Cart getCartById(int cartId);

	    Cart validate(int cartId) throws IOException;

	    void update(Cart cart);

	}

