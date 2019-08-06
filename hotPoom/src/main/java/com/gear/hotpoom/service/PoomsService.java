package com.gear.hotpoom.service;

<<<<<<< HEAD
import java.util.List;

import com.gear.hotpoom.vo.Poom;

public interface PoomsService {

	//hot poom
	public List<Poom> getListHP();
	//new poom
	public List<Poom> getListNP();
=======
import java.util.Map;


public interface PoomsService {

	public Map<String, Object> getPoomList(int page, int numPage, int speciesNo, int petCnt, int lowPrice, int highPrice, int sort);
	
>>>>>>> master
}
