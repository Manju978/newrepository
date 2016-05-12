package purelypink.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import purelypink.model.ProductModel;
import purelypink.service.ProductService;

@Controller
public class MainController 
{

	ProductService ps;
		
	@Autowired
	public MainController(ProductService ps) {
		this.ps = ps;
	}
	
	@RequestMapping("/")
	public ModelAndView welcome()
	{
		ModelAndView model=new ModelAndView("index");	
		return model;
	}
	
	@RequestMapping("/login")
	public ModelAndView hello()
	{
		ModelAndView model=new ModelAndView("Login");	
		return model;
	}
	@RequestMapping("/register")
	public ModelAndView hello1()
	{
		ModelAndView model=new ModelAndView("Register");	
		return model;
	}
	
	@RequestMapping("/products")
	public ModelAndView hello2(Model model)
	{
		
		ModelAndView mv=new ModelAndView("products");
		Gson gson=new Gson();
		List<ProductModel> list = ps.getproductlist();
		System.out.println("list : "+list);
		String json=gson.toJson(list);
		System.out.println("MY JSON"+json);
		model.addAttribute("product", new ProductModel());
	    mv.addObject("productList", json.toString());
		return mv;

	}
	@RequestMapping("/productdetails")
	public String hello5(@ModelAttribute("product") ProductModel product,BindingResult res,ModelMap m)
	{
		ModelAndView model=new ModelAndView("productdetails");	
m.addAttribute("product",product);
//m.addAttribute("p1",product);
		return "productdetails";

	}
	@RequestMapping("/shoppingcart")
	public String hello6()
	{
		return "shoppingcart";
	}
	@RequestMapping("/address")
	public String hello7()
	{
		return "address";
	}
	@RequestMapping("/submission")
	public String hello8()
	{
		return "submission";
	}
}
