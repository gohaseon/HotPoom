package com.gear.hotpoom.controller;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.gear.hotpoom.service.ReviewsService;

@RestController
@RequestMapping("/ajax")
public class AjaxController {
	@Autowired
	private ReviewsService reviewsService;
	
	
	@RequestMapping(value="/review",method=RequestMethod.GET)
	public Map<String, Object> getReviews(int no, int pageNo) {
		
		return reviewsService.getReviewList(no, pageNo);
	}
	
}
