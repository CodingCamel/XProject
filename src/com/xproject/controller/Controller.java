package com.xproject.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.xproject.pojo.AreaInfo;
import com.xproject.service.impl.AreaInfoDbServiceImpl;
import com.xproject.pojo.BsInfo;
import com.xproject.service.impl.BsInfoDbServiceImpl;
import com.xproject.pojo.CellRow;


public class Controller extends AbstractController {

	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ModelAndView mv = new ModelAndView("dbshow");
		
		AreaInfoDbServiceImpl service1 = new AreaInfoDbServiceImpl();
		List<AreaInfo> list1 = service1.ListAll();


		BsInfoDbServiceImpl service2 = new BsInfoDbServiceImpl();
		List<BsInfo> list2 = service2.ListAll();

		mv.addObject("database", list1.get(0).toString() + list2.get(0).toString());
		
		mv.addObject("alist", list1);
		mv.addObject("blist", list2);
		
		ArrayList<CellRow> rowList=new ArrayList<CellRow>();
		
		for(int i=0; i<50; i++)
		{
			rowList.add(new CellRow(48));
		}

		mv.addObject("rowList", rowList);
	
		return mv;
	}

}