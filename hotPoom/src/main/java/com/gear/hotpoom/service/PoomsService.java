package com.gear.hotpoom.service;

import java.util.List;

import com.gear.hotpoom.vo.Poom;

public interface PoomsService {

	//hot poom
	public List<Poom> getListHP();
	//new poom
	public List<Poom> getListNP();
}
