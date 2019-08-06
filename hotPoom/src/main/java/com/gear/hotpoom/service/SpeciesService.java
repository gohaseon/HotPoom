package com.gear.hotpoom.service;

<<<<<<< HEAD
import java.util.List;

import com.gear.hotpoom.vo.Species;

public interface SpeciesService {

	public List<Species> getList(String species);
=======
import java.util.Map;


public interface SpeciesService {

	public Map<String, Object> searchSpeciesName(String name);
	
>>>>>>> master
}
