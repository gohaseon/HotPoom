package com.gear.hotpoom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gear.hotpoom.dao.SpeciesDAO;
import com.gear.hotpoom.vo.Species;

@Service
public class SpeciesServiceImpl implements SpeciesService{

	@Autowired
	private SpeciesDAO speciesDAO;
	
	
	//index species autocomplete
	@Override
	public List<Species> getList(String species) {
		return speciesDAO.selectList(species);
	}//getList() end
}
