package com.gear.hotpoom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gear.hotpoom.dao.PoomsDAO;
import com.gear.hotpoom.vo.Poom;

@Service
public class PoomsServiceImpl implements PoomsService{

	@Autowired
	private PoomsDAO poomsDAO;
	
	
	//hot poom
	@Override
	public List<Poom> getListHP() {
		return poomsDAO.selectListHP();
	}//getList() end
	
	//new poom
	@Override
	public List<Poom> getListNP() {
		return poomsDAO.selectListNP();
	}//getListNP() end
}
