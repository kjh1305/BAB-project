package com.cafe24.iducs.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

	@Controller
	public class MemberController {
	
	@Autowired
	MemberDAO memberDao;
	
	@RequestMapping(value="/member/login.do",method=RequestMethod.GET)
	public String login() {
		
		return "member/member-login.jsp";
	}
	
	@RequestMapping(value="/member/signUp.do",method=RequestMethod.GET)
	public String signUp(Model model) {
		
		model.addAttribute("check", 0);
		
		return "member/member-signup.jsp";
	}
	
	@RequestMapping(value="/member/signUpProc.do",method=RequestMethod.POST)
	public ModelAndView signUpProc(MemberDTO dto , ModelAndView mav) {

			memberDao.insertMember(dto);
			mav.setViewName("member/member-login.jsp");
		
		return mav;
	}
	
	@RequestMapping(value="/member/loginProc.do",method=RequestMethod.POST)
	public ModelAndView loginProc(MemberDTO dto, HttpServletRequest request, ModelAndView mav) {
			
		HttpSession session = request.getSession(true);		
		int count = memberDao.countMember(dto);
		MemberDTO user = memberDao.selectMember(dto);
		
			if(count == 1) {
				session.setAttribute("name", user.getName());
				session.setAttribute("id", user.getId());
			}
			else {
				mav.addObject("msg", "id,pw를 확인해주세요.");
				mav.setViewName("member/member-login.jsp");
				return mav;
			}
			
			mav.setViewName("redirect:/");
		return mav;
	}
	
	@RequestMapping(value="/member/logout.do",method=RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		
		HttpSession session = request.getSession(true);	
		session.invalidate();
		
		return "redirect:/";
	}
	
	@RequestMapping(value="/member/idCheck.do",method=RequestMethod.GET)
	public ModelAndView idCheck(@RequestParam String id, MemberDTO dto, ModelAndView mav) {
		
		
		int count = memberDao.checkMember(dto);
		mav.addObject("id", id);
		
		if(count == 1) {
			mav.addObject("msg", 0);
		}
		else {
			mav.addObject("msg", 1);
		}
		
		mav.setViewName("member/member-idcheck.jsp");
		
		return mav;
	}
}
