package purelypink.service;

import java.util.List;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import purelypink.model.Cart;


@Component
public class CartService {
	
	
		 
		public Cart initFlow(){	
			System.out.println("Cart Initialized");
			return new Cart();
		}
		
			
			
			

}
