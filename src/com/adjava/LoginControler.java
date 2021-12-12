package com.adjava;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;





@Controller
public class LoginControler {
	@Autowired
	LoginModel lm; /*dependency injection: objects dependency from bean class is injected to lm*/

	/*@RequestMapping("/") //to execute first
	public String showLogin(Model m)
	{
		m.addAttribute("loginattribute", new Login()); //key and vale. value is the object of pojo class.
		return "login";
	}*/
	@RequestMapping("/")
	public String showLogin(Model m)
	{
		//m.addAttribute("loginattribute", new Login());
		return "front";
	}
	@RequestMapping("check") //from the form action attribute.
	public String checkLogin(@ModelAttribute("loginattribute")Login obj) /*if the obj have to be poppulated you have to annotate with the @model attribute watever value you have given in the action attribute in the form tag have to be given in model attribute*/
	{
		if(lm.processLogin(obj))
		{
			return "usersection";
		}
		else
			return "login";
	}
	@RequestMapping("register")
	public String showRegister(Model m)
	{
		m.addAttribute("studattribute", new Register());
		return "register";
	}
	
	@RequestMapping("usersigin")
	public String usersigin(Model m)
	{
		m.addAttribute("loginattribute", new Login());
		return "login";
	}
	
	@RequestMapping("usersignup")
	public String usersigup(Model m)
	{
		m.addAttribute("studattribute", new Register());
		return "register";
	}
	
	//public String insertValues(@ModelAttribute("studattribute")Register obj,Model m)
	@RequestMapping("insert")
	public String insertValues(@ModelAttribute("studattribute")Login obj)
		
	{
		//System.out.println("insert controller");
		
	  // m.addAttribute("studattribute", new Login());
	   lm.insert(obj);
		return "register";
	}
	
	@RequestMapping("insertbook")
	public String insertbook(@ModelAttribute("bookattribute")Adminaddbook obj)
	{
		lm.insertadminaddbook(obj);
		//m.addAttribute("bookattribute", new Adminaddbook());
		return "adminaddbook";
	}
	
	@RequestMapping("categories")
	public String showcategory()
	{
		//m.addAttribute("studattribute", new Register());
		return "category";
	}
	@RequestMapping("romance")
	public String showromance()
	{
		//m.addAttribute("studattribute", new Register());
		return "romance";
	}
	@RequestMapping("thrillers")
	public String showthrillers()
	{
		//m.addAttribute("studattribute", new Register());
		return "thrillers";
	}@RequestMapping("science")
	public String showscience()
	{
		//m.addAttribute("studattribute", new Register());
		return "science";
	}@RequestMapping("creative")
	public String showcreative()
	{
		//m.addAttribute("studattribute", new Register());
		return "creative";
	}@RequestMapping("personal")
	public String showpersonal()
	{
		//m.addAttribute("studattribute", new Register());
		return "personal";
	}@RequestMapping("people")
	public String showpeople()
	{
		//m.addAttribute("studattribute", new Register());
		return "people";
	}
	@RequestMapping("productpage")
	public String productpage( Model m)
	{
	
		//m.addAttribute("productattribute", new Adminaddbook());
		return "productpage";
	
}
	@RequestMapping("placeorder")
	public String placeorder( Model m)
	{
	
		//m.addAttribute("productattribute", new Adminaddbook());
		return "payment";
	

}
	@RequestMapping("logout")
	public String showlogout(Model m)
	{
		m.addAttribute("loginattribute", new Login());
		return "login";
	}
	
	/*---------------------------admin sec------------------*/
	@RequestMapping("adminlogin")
	public String adminlogin(Model m)
	{
		//lm.insertbook(obj);
		//m.addAttribute("loginattribute", new Adminlogin());
		return "adminlogin";
	
}
	
	@RequestMapping("adlogin")
	public String adminlogin(@ModelAttribute("loginattribute")Adminlogin obj, Model m)
	{
		/*String s=lm.checkLogin1(obj);
		m.addAttribute("loginattribute", new Adminlogin());
		return s;
		*/
		if(lm.checkLogin1(obj))
		{
			return "adminhome";
		}
		else
			return "adminlogin";
	}
	@RequestMapping("addbook")
	public String addbook( Model m)
	{
	
		m.addAttribute("bookattribute", new Adminaddbook());
		return "adminaddbook";
	
}
	/*@RequestMapping("insertbook")
	public String insertbook(@ModelAttribute("bookattribute")Adminaddbook obj,Model m)
	{
		lm.insertadminaddbook(obj);
		m.addAttribute("bookattribute", new Adminaddbook());
		return "adminaddbook";
	}*/
	
	
	
	 @RequestMapping("deletebook")
	 public String deletebook(Model m)
	{
		List<Adminaddbook> li=lm.selectdata();
		m.addAttribute("booklist", li);
		return "admindelete";
		//*m.addAttribute("loginattribute", new Login());     return "login";
		}
	 
		@RequestMapping("deletebook1")
		public String deletebook1(@ModelAttribute("loginattribute")Adminaddbook obj,Model m)
		{
			lm.deletebook(obj);
		//	m.addAttribute("booklist", li);
			List<Adminaddbook> li=lm.selectdata();
			m.addAttribute("booklist", li);
			return "admindelete";
			
		
	}
	
	@RequestMapping("adminlogout")
	public String logout(Model m)
	{
		//m.addAttribute("loginattribute", new Login());
		return "adminlogin";
	
}
	@RequestMapping("deleteuser")
	public String deleteuser(Model m)
	{
		List<Login> li=lm.selectuser();
		m.addAttribute("userlist", li);
		return "admindeleteuser";
		/*m.addAttribute("loginattribute", new Login());
		return "login";*/
	
}
	@RequestMapping("deleteuser1")
	public String deleteuser1(@ModelAttribute("loginattribute")Login obj,Model m)
	{
		lm.deleteuser(obj);
	//	m.addAttribute("booklist", li);
		List<Login> li=lm.selectuser();
		m.addAttribute("userlist", li);
		return "admindeleteuser";
		
	
}
}


