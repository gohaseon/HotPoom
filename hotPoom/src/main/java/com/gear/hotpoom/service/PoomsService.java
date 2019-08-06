package com.gear.hotpoom.service;

import java.util.Map;


public interface PoomsService {

	public Map<String, Object> getPoomList(int page, int numPage, int speciesNo, int petCnt, int lowPrice, int highPrice, int sort);
	
}
