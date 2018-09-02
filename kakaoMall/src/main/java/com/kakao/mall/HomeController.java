package com.kakao.mall;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kakao.mall.mapper.ProductMapper;
import com.kakao.mall.mapper.UserMapper;
import com.kakao.mall.model.entity.ProductVo;
import com.kakao.mall.model.entity.ShoppingVo;
import com.kakao.mall.model.entity.UserVo;

@Controller
public class HomeController {

	//uMapper와 pMapper에서 db저장
	@Autowired
	private UserMapper uMapper;
	
	@Autowired
	private ProductMapper pMapper;
	
	//-----------------회원가입
	@RequestMapping("/signUp")
	public String singUp() throws SQLException {
		return "signUp";
	}
	@RequestMapping(value="/userAdd",method=RequestMethod.POST)
	public String userAdd(UserVo bean,Model model) throws SQLException {
		
		int result=uMapper.insertOne(bean);
		if(result>0) { //db저장이 성공했을 경우에
			model.addAttribute("result","회원가입 성공");
			return "index";
		}
		else {
			return "signUp";
		}
	}
	
	
	//-------------로그인
	@RequestMapping("/signIn")
	public String singIn() throws SQLException {
		return "signIn";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(HttpSession session,UserVo bean,Model model) throws SQLException{
		
		String id=uMapper.login(bean);
		if(id!=null) //아이디와 비밀번호가 일치하는 id값이 있을 경우
		{
			session.setAttribute("id", id); //session에 id값 저장
			return "redirect:/"; //다시 첫화면으로 이동
		}
		else { //아이디와 비밀번호가 일치하는 id값이 없을 경우..
			model.addAttribute("result", "아이디와 비밀번호를 확인해주세요");
			return "signIn"; //다시 로그인 화면으로 이동
		}
	}
	//로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {		
		session.invalidate();
		return "redirect:/";
	}
	
	
	//카테고리
	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public String category(Model model) throws SQLException {
		List<ProductVo> list=pMapper.getProductList();
		model.addAttribute("categoryList",list); //카테고리 전체 리스트 뽑기
		return "category";
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/detail", method = RequestMethod.POST,produces="application/json;")
	public ProductVo productDetail(String code) throws SQLException {
		ProductVo bean=pMapper.selectOne(code); //코드를 받아서 그 코드에 해당하는 product뽑기
		System.out.println(bean);
		if(bean!=null) {//해당하는 product가 있을 경우
		return bean;
		}
		else
			return null;
	}	
	
	//-------------구매하기 
	@RequestMapping(value="/buy",method=RequestMethod.POST)
	public String buy(int amount,String code,int price,HttpSession session) throws SQLException {
		System.out.println("code:"+code);
		System.out.println("amount:"+amount);
		String id=session.getAttribute("id").toString();
		int totalMoney=price*amount; //총금액=가격*수량
		ShoppingVo bean=new ShoppingVo();
		bean.setCode(code);
		bean.setId(id);
		bean.setAmount(amount);
		bean.setTotalMoney(totalMoney);
		
		System.out.println(id);
		int result=uMapper.buy(bean);
		if(result>0) //구매한 이력을 db저장에 성공
			{
			System.out.println("성공");
			return "redirect:/category";
			}
		else {
			System.out.println("실패");
			return "redirect:/category";
		}
	}	
	
	//--------------구매이력보기
	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public String cart(Model model,HttpSession session) throws SQLException {
		String id=session.getAttribute("id").toString();
		List<ShoppingVo> list=uMapper.cart(id);
		model.addAttribute("clist",list);
		return "cart";
	}
	
	
}
