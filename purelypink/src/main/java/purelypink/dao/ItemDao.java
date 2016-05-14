package purelypink.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import purelypink.model.Cart;
import purelypink.model.Item;

@Repository
@Transactional
public class ItemDao 
{
	@Autowired
    private SessionFactory sessionFactory;
	public void addCartItem(Item item){
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(item);
        session.flush();
    }

    public void removeCartItem(Item item){
        Session session = sessionFactory.getCurrentSession();
        session.delete(item);
        session.flush();
    }

    public void removeAllCartItems(Cart cart){
        List<Item> cartItems = cart.getCart_items();

        for (Item item : cartItems){
            removeCartItem(item);
        }
    }

    public Item getCartItemByProductId(int productId){
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from CartItem where productId = ?");
        query.setInteger(0, productId);
        session.flush();

        return (Item) query.uniqueResult();
    }


}
