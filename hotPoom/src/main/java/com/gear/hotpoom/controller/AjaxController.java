package com.gear.hotpoom.controller;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.gear.hotpoom.service.PoomsService;
import com.gear.hotpoom.service.SpeciesService;

@RestController
@RequestMapping(value="/ajax")
public class AjaxController {

	@Autowired
	private PoomsService poomsService;
	@Autowired
	private SpeciesService speciesService;
	
	
	@RequestMapping(value="poom/page/{page}", method=RequestMethod.GET)
	public Map<String, Object> getPoomList(@PathVariable int page, int speciesNo, int petCnt, int lowPrice, int highPrice, int sort){
		return poomsService.getPoomList(page, 5, speciesNo, petCnt, lowPrice, highPrice, sort);
	}
	
	@RequestMapping(value="poom/species/{name}", method=RequestMethod.GET)
	public Map<String, Object> searchSpeciesName(@PathVariable String name){
		System.out.println("controller"+name);
		return speciesService.searchSpeciesName(name);
	}
	
}
