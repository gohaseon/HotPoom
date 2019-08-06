package com.gear.hotpoom.service;

import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gear.hotpoom.dao.SpeciesDAO;

@Service
public class SpeciesServiceImpl implements SpeciesService{

	@Autowired
	private SpeciesDAO speciesDAO;
	
	@Override
	public Map<String, Object> searchSpeciesName(String name) {
		// TODO Auto-generated method stub
		System.out.println("service"+name);
		Map<String, Object> map = new ConcurrentHashMap<String, Object>();
		map.put("speciesList", speciesDAO.selectSpeciesName(name));
		return map;
	}
	
}
