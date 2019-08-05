package com.gear.hotpoom.service;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gear.hotpoom.dao.PetsDAO;
import com.gear.hotpoom.dao.PhotosDAO;
import com.gear.hotpoom.dao.PoomsDAO;
import com.gear.hotpoom.vo.Poom;

@Service
public class PoomsServiceImpl implements PoomsService{
	@Autowired
	private PoomsDAO poomsDAO;
	@Autowired
	private PhotosDAO photosDAO;
	@Autowired
	private PetsDAO petsDAO;

	@Override
	public Map<String, Object> getDetail(int no) {
		System.out.println("PoomsService getDetail() no : "+no);
		Map<String, Object> map = new ConcurrentHashMap<String, Object>();
		Poom poom = poomsDAO.selectPoomDetail(no);
		map.put("poom", poom);
		map.put("photoList", photosDAO.selectPoomPhotos(no));
		map.put("petList", petsDAO.selectPetListByUserNo(poom.getUserNo()));
		
		return map;
	}
}