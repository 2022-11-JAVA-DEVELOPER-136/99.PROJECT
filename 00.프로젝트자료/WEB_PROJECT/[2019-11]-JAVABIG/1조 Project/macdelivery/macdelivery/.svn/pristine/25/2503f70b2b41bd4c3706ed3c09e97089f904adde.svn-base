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

public class MyPageJumunHistoryController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		String forwardPath = "";

		try {
			JumunService jumunService = new JumunService();
			JumunDetailService jumunDetailService = new JumunDetailService();
			HttpSession session = request.getSession();
			int m_no = (int) session.getAttribute("m_no");
			System.out.println("--mypagejumun---m_no" + m_no);
			//ArrayList<JumunDetail> jumunDetailList = jumunDetailService.selectByNo(m_no);
			ArrayList<Jumun> jumunList = jumunService.selectByNo(m_no);

			System.out.println("--mypagejumun---jumunList" + jumunList);
			
			//request.setAttribute("jumunDetailList", jumunDetailList);
			
			if (session.getAttribute("member") != null) {
				int m_no6 = (int) session.getAttribute("m_no");
				System.out.println(m_no6);
				CartService cs = new CartService();
				int cartCount = cs.cartCount(m_no6);
				request.setAttribute("cartCount", cartCount);
				System.out.println("^^^^^^^^^^^^^^^^^ ");
				
				ArrayList<HashMap> list = new ArrayList<>();
				for (Jumun jumun : jumunList) {
					HashMap jmh = new HashMap<>();
					ArrayList jdList = jumunDetailService.selectByNo(jumun.getJ_no());
					jmh.put("jumun", jumun);
					jmh.put("jdList", jdList);

					list.add(jmh);
				}

				request.setAttribute("jumunList", list);
				System.out.println(list);
			}
			forwardPath = "forward:/WEB-INF/view/McDelivery_myPage_jumunHistory.jsp";

		} catch (Exception e) {
			forwardPath = "forward:/WEB-INF/view/error.jsp";
		}

		return forwardPath;
	}

}
