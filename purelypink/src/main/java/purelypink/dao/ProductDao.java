package purelypink.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import purelypink.model.ProductModel;

@Repository("productDao")
public class ProductDao implements ProductDaoInterface
{
	@Autowired	
	SessionFactory sessionFactory;
	
	public Session getSession()
	{
		return sessionFactory.openSession();
	}
	
	@SuppressWarnings("unchecked")
	public List<ProductModel> getproductlist() 
	{
	Session sess = getSession();
	List<ProductModel> products= null;	
	Query query=sess.createQuery("from ProductModel");
	products=(List<ProductModel>)query.list();
	
	return products;	
 
	}

	public void saveProduct(ProductModel prod)
	{
		// TODO Auto-generated method stub
		Session sess = getSession();
		System.out.println(sess);
		if(sess!=null)
		{	
		sess.save(prod);
	    System.out.println("Product Object Saved Successfully");		
		sess.close();
		}
	
		
		
	}

	public void addProduct(ProductModel p) {
		// TODO Auto-generated method stub
		Session sess=getSession();
		sess.save(p);
		
	}

	public void updateProduct(ProductModel p) 
	{
		// TODO Auto-generated method stub
		Session sess=getSession();
		sess.update(p);

		
	}

	public void removeProduct(int id) 
	{
		// TODO Auto-generated method stub
		Session sess=getSession();
		ProductModel p=(ProductModel) sess.get(ProductModel.class,new Integer(id));
		if(sess!=null)
		{
			sess.delete(p);
		}

		
	}

}
