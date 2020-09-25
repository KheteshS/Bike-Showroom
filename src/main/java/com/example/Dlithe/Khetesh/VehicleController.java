package com.example.Dlithe.Khetesh;

import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class VehicleController {
	@Autowired
	private VehicleService service;
	List<Vehicle> temp;
	
	//Requesting import.jsp to add new vehicle
	@RequestMapping(value="/add")
	public ModelAndView askToAdd() {
		return new ModelAndView("import");
	}
	
	//adding new vehicle
	@RequestMapping(value="/newStock", method=RequestMethod.POST)
	public ModelAndView addSubmit( @Valid Vehicle veh, BindingResult bind ) {
		ModelAndView mod=new ModelAndView("import");
		if (bind.hasErrors()) {
			return mod;
		}
		if (service.newAdd(veh) != null){
			mod.addObject("msg", "Vehicle "+veh.getModel()+" has added in the stock");
		}
		else {
			mod.addObject("msg", "Vehicle "+veh.getModel()+" has not added in the stock");
		}
		return mod;
	}
	
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public ModelAndView traverse()
	{
		temp=service.every();
		return new ModelAndView("show").addObject("all", temp);
	}
}
