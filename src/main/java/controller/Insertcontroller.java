package controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dao.Dao;
import dto.Dto;

@Controller
public class Insertcontroller {

	@RequestMapping("/insertb")
	public ModelAndView insert(@ModelAttribute Dto dto, Dao dao) {
		dao.insert(dto);
		ModelAndView mav=new ModelAndView("Home.jsp");
		mav.addObject("msg1", "data inserted");
		return mav;
		
	}
	@RequestMapping("/delete")
public ModelAndView delete(@ModelAttribute Dto dto,Dao dao) {
		int id=dto.getId();
		String message=dao.delete(id);
	
		ModelAndView mav=new ModelAndView("Home.jsp");
		mav.addObject("msg1", message);
		return mav;
}
	

	@RequestMapping("/fetchall")
	public ModelAndView fetchall(Dao dao) {
		List<Dto> dto=dao.fetchall();
		ModelAndView mav=new ModelAndView("fetchall.jsp");
		mav.addObject("list", dto);
		return mav;
	}
	
	@RequestMapping("/fetchid")
	public ModelAndView fetchid(@ModelAttribute Dto dto,Dao dao) {
		Dto d=dao.fetchid(dto.getId());
		ModelAndView mav=new ModelAndView("fetchid.jsp");
		mav.addObject("msg1", d);
		return mav;
	}
	@RequestMapping("/update")
	public ModelAndView update(@ModelAttribute Dto d,Dao ds) {
		Dto dd=ds.fetchid(d.getId());
		ModelAndView m=new ModelAndView("update1.jsp");
		m.addObject("illi",dd);
		return m;
	}
	
	@RequestMapping("/update2")
	public void update2(@ModelAttribute Dto d,Dao ds) {
		ds.update(d);
	}
}
	

