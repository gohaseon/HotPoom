package com.gear.hotpoom.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.gear.hotpoom.service.AddressesService;
import com.gear.hotpoom.service.PoomsService;
import com.gear.hotpoom.service.SpeciesService;
import com.gear.hotpoom.vo.Address;
import com.gear.hotpoom.vo.Poom;
import com.gear.hotpoom.vo.Species;

@RestController
@RequestMapping(value="/ajax")
public class AjaxController {

	@Autowired
	private SpeciesService speciesService;
	@Autowired
	private PoomsService poomsService;
	@Autowired
	private AddressesService addressesService;
	
	
	//Species 자동완성
	@RequestMapping(value="/species/auto/{species}", method=RequestMethod.GET)
	public List<Species> autocompleteSpecies(@PathVariable String species ) {
		
		return speciesService.getList(species);
	}//autocompleteSpecies() end
	
	
	//hot poom list
	@RequestMapping(value="/hot/poom", method=RequestMethod.GET)
	public List<Poom> getHotPoomList() {
		return poomsService.getListHP();
	}//getHotPoomList() end
	
	
	//location 자동완성
	@RequestMapping(value="/location/auto/{location}", method=RequestMethod.GET)
	public List<Address> autocompleteLocation(@PathVariable String location) {
		return addressesService.getList(location);
	}//autocompleteLocation() end

}
