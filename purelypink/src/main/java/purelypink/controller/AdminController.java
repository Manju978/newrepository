package purelypink.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import purelypink.model.ProductModel;
import purelypink.service.ProductService;

@Controller
public class AdminController 
{

@Autowired
ProductService pservice;

public void setProductService(ProductService ps)
{
	this.pservice=ps;
}
@RequestMapping(value="/admin")
public String hello(Model model)
{
	Gson gson=new Gson();
	List<ProductModel> list = pservice.getproductlist();
	System.out.println("list : "+list);
	String json=gson.toJson(list);
	System.out.println("MY JSON"+json);
	model.addAttribute("product", new ProductModel());
    model.addAttribute("productList", json.toString());
	return "admin";
    
}
//For add and update product both
@RequestMapping(value = "/admin/add", method = RequestMethod.POST)
public String submit(@ModelAttribute("product")ProductModel product,ModelMap model) 
{
	if(product.getPdctID() == 0){
          model.addAttribute("product",product);
	      pservice.addProduct(product);
	      ArrayList<ProductModel> p= (ArrayList<ProductModel>) pservice.getproductlist();
			Gson gson=new Gson();
			String json=gson.toJson(p);
			System.out.println("ajson: "+json);
			model.addAttribute("productList",json);
	   
	        return "admin";
	   
    }else{
       
    	model.addAttribute("product", product);
        pservice.updateProduct(product);
        ArrayList<ProductModel> p= (ArrayList<ProductModel>) pservice.getproductlist();
  		Gson gson=new Gson();
  		String json=gson.toJson(p);
  		System.out.println("ajson: "+json);
  		model.addAttribute("productList",json);
        }
	return "admin";
}

@RequestMapping(value = "/admin/admindelete", method = RequestMethod.POST)
public String delete(@ModelAttribute("product")ProductModel product, ModelMap model) {
  model.addAttribute("product", product);
  pservice.removeProduct(product.getPdctID());
  ArrayList<ProductModel> p= (ArrayList<ProductModel>) pservice.getproductlist();
	Gson gson=new Gson();
	String json=gson.toJson(p);
	//System.out.println("ajson: "+json);
	model.addAttribute("productList",json);

    return "admin";
}
@RequestMapping(value = "/admin/adminedit", method = RequestMethod.POST)
public String edit(@ModelAttribute("product")ProductModel product,ModelMap model) {
  model.addAttribute("product", product);
  pservice.updateProduct(product);
  ArrayList<ProductModel> p= (ArrayList<ProductModel>) pservice.getproductlist();
	Gson gson=new Gson();
	String json=gson.toJson(p);
	//System.out.println("ajson: "+json);
	model.addAttribute("productList",json);
	Gson g=new Gson();
	String j=g.toJson(product);
	model.addAttribute("productList",j);
    return "admin";
}

}
