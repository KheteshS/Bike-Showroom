package com.example.Dlithe.Khetesh;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VehicleService {
	@Autowired
	VehicleRepository repo;
	public Vehicle newAdd(Vehicle vehicle) {
		//dependency injection
		return repo.save(vehicle);
	}
	
	public List<Vehicle> every(){
		return repo.findAll();
	}
}
