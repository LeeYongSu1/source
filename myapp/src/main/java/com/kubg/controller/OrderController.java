package com.kubg.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kubg.service.PreorderService;
import com.kubg.vo.BookVO;

@Controller
public class OrderController {
	
	@Inject
	PreorderService service;
	
	@RequestMapping(value="/preorder", method = RequestMethod.GET)
    public String toPreorderPage() {
    	return "preorderPage";
    }
	
	@RequestMapping(value="/preorder", method = RequestMethod.POST)
    public String preorderToDatabase(BookVO vo) {
		service.insertGoods(vo);
    	return "redirect:/";
    }
}
