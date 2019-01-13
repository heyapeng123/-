package jc;

import java.util.List;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DingdanServlet extends HttpServlet {

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
            request.setCharacterEncoding("gb2312");
            String xh=request.getParameter("xh");
            String spbm=request.getParameter("spbm");
            String spmc=request.getParameter("spmc");
            String bj=request.getParameter("bj");
            String sl=request.getParameter("sl");
            DingdanBean dd=new DingdanBean();
            dd.setXh(xh);
            dd.setSpbm(spbm);
            dd.setSpmc(spmc);
            dd.setBj(bj);
            dd.setSl(sl);
            ServletContext application=getServletContext();
            List<DingdanBean> list=(List<DingdanBean>)application.getAttribute("dingdans");
            if(list==null){
            	list=new ArrayList<DingdanBean>();
            }
            list.add(dd);
            application.setAttribute("dingdans", list);
            RequestDispatcher dispatcher=request.getRequestDispatcher("dingdanjieshou.jsp");
            dispatcher.forward(request, response);
		
	}



}
