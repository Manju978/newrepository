package purelypink.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

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
BindingResult result;
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
@RequestMapping(value = "/addnewproduct", method = RequestMethod.POST)
public String submit(@Valid @ModelAttribute("product")ProductModel product, 
  BindingResult result, ModelMap model) {
	if(result.hasErrors())
	   {
	        return "admin";
	   }   
	   

	if(product.getPdctID()== 0)
	{
          
		model.addAttribute("product", product);
	      pservice.addProduct(product);
	      ArrayList<ProductModel> p= (ArrayList<ProductModel>) pservice.getproductlist();
			Gson gson=new Gson();
			String json=gson.toJson(p);
			System.out.println("ajson: "+json);
			model.addAttribute("productList",json);
	       }
	else
	{
       
    	model.addAttribute("product", product);
        pservice.updateProduct(product);
        ArrayList<ProductModel> p= (ArrayList<ProductModel>) pservice.getproductlist();
  		Gson gson=new Gson();
  		String json=gson.toJson(p);
  		System.out.println("ajson: "+json);
  		model.addAttribute("productList",json);
        
          return "admin";
        
      	  }
	return "admin";
}

@RequestMapping(value = "/deleteproduct", method = RequestMethod.POST)
public String delete(@ModelAttribute("product")ProductModel product, 
  BindingResult result, ModelMap model) 
{
	
  model.addAttribute("product", product);
  pservice.removeProduct(product.getPdctID());
  ArrayList<ProductModel> p= (ArrayList<ProductModel>) pservice.getproductlist();
	Gson gson=new Gson();
	String json=gson.toJson(p);
	System.out.println("ajson: "+json);
	model.addAttribute("list",json);
  
    return "admin";

}
@RequestMapping(value = "/editproduct", method = RequestMethod.POST)
public String edit(@Valid @ModelAttribute("product")ProductModel product, 
  BindingResult result, ModelMap model) 
{

  model.addAttribute("product", product);
  pservice.updateProduct(product);
  ArrayList<ProductModel> p= (ArrayList<ProductModel>) pservice.getproductlist();
	Gson gson=new Gson();
	String json=gson.toJson(p);
	System.out.println("ajson: "+json);
	model.addAttribute("productList",json);
	Gson g=new Gson();
	String j=g.toJson(product);
	model.addAttribute("productList",json);
    return "admin";
}

}
