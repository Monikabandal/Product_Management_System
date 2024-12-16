package com.spring.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.model.Product;
import com.spring.serviceI.ServiceI;

@Controller
public class ProdController {
	
	@Autowired
	ServiceI ps;

	@RequestMapping("/")
	
	public String index() {
		return "index";
	}

	@RequestMapping("/add")
	public String add() {
		return "add";
	}
	@RequestMapping("/view")
   public String view(Model m) {
		Iterable<Product> p =  ps.view();
		m.addAttribute("prod",p);
		return "view";
	}
	@RequestMapping("/submit")
	public String submit(@ModelAttribute Product p) {
		ps.add(p);
		return "index";
	}
	
	@RequestMapping("/delete")
	public String delete(Product p,Model m) {
		ps.delete(p);
		Iterable<Product> prod = ps.view();
		m.addAttribute("prod", prod);
		return "view";
	}
	
	@RequestMapping("/edit")
	public String edit(@RequestParam("id") int id,Model m) {
		Product p = ps.edit(id);
		m.addAttribute("prod", p);
		return "edit";
	}
	@RequestMapping("/update")
	public String update(@ModelAttribute Product p,Model m) {
		ps.add(p);
		Iterable<Product> prod =ps.view();
		m.addAttribute("prod", prod);
		return "view";
	}
	@RequestMapping("/sort")
	public String sort(@ModelAttribute Product p,Model m) {
		
		Iterable<Product> prodIterable = ps.view();
	    List<Product> prodList = new ArrayList();
	    prodIterable.forEach(prodList::add);  
	    prodList.sort((p1, p2) -> Double.compare(p1.getPrice(), p2.getPrice()));
		m.addAttribute("prod", prodList);
		return "sort";
	}
}
