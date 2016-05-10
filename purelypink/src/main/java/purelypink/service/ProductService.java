package purelypink.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import purelypink.dao.ProductDao;
import purelypink.model.ProductModel;

@Service("pservice")
public class ProductService implements ProductServiceInterface 
{
@Autowired
ProductDao productdao;
@Transactional
public ProductDao getProductDao()
{
	return productdao;
	
}
@Transactional
	public List<ProductModel> getproductlist() 
{
		// TODO Auto-generated method stub
		return productdao.getproductlist();
	}
@Transactional
	public void saveProduct(ProductModel p) {
		// TODO Auto-generated method stub
	this.productdao.saveProduct(p);
		
	}
@Transactional
	public void addProduct(ProductModel p)
{
		// TODO Auto-generated method stub
	this.productdao.addProduct(p);
		
	}
@Transactional
	public void updateProduct(ProductModel p) 
{
		// TODO Auto-generated method stub
	this.productdao.updateProduct(p);
		
	}
@Transactional
	public void removeProduct(int id) {
		// TODO Auto-generated method stub
		this.productdao.removeProduct(id);
	}
}
