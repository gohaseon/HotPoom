package com.gear.hotpoom.dao;

import java.util.List;

import com.gear.hotpoom.vo.Poom;

public interface PoomsDAO {

	//hot poom
	public List<Poom> selectListHP();
	//new poom
	public List<Poom> selectListNP();
}
