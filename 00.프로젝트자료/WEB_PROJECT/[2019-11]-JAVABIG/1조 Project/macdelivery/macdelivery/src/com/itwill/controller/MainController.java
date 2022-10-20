package com.itwill.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwill.cart.model.CartService;
import com.itwill.jumun.model.Jumun;
import com.itwill.jumun.model.JumunService;
import com.itwill.jumun_detail.model.JumunDetail;
import com.itwill.jumun_detail.model.JumunDetailService;
import com.itwill.summer.Controller;

public class MainController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		Object m_no = session.getAttribute("m_no");

		try {
			HashMap hs = new HashMap<>();
			System.out.println(m_no);
			JumunService js = new JumunService();
			JumunDetailService jds = new JumunDetailService();
			CartService cs = new CartService();

			// 메인화면 주문내역
			if (m_no != null) {
				int m = (int) m_no;
				System.out.println(m);
				ArrayList<Jumun> jumunList = js.selectByNo(m);
				int jumunListSize = jumunList.size();
				if (jumunListSize != 0) {
					ArrayList<JumunDetail> jdList = jds.selectByNo(jumunList.get(jumunListSize - 1).getJ_no());
					hs.put("jumun", jumunList.get(jumunListSize - 1));
					hs.put("jumunDetail", jdList);
					request.setAttribute("jumunHistory", hs);
				}
			}
			// 메인컨트롤러에서 메인페이지로 이동시켜줄때 카트안에 담긴 갯수도 전송
			if (session.getAttribute("member") != null) {
				int cartCount = cs.cartCount((int) m_no);
				request.setAttribute("cartCount", cartCount);
			}
			String forwardPath = "forward:/WEB-INF/view/McDelivery_Main.jsp";
			return forwardPath;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}

}
