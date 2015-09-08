package kr.co.javaspecialist.member.web;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.javaspecialist.member.domain.MemberDAO;
import kr.co.javaspecialist.member.domain.MemberVO;

import org.apache.log4j.Logger;

@WebServlet("/member")
public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static final Logger logger = Logger.getLogger(MemberServlet.class);

	MemberDAO dao = new MemberDAO();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String userid = (String)session.getAttribute("userid");

		Enumeration<String> paramNames= request.getParameterNames();
		String path = "notfound";
		if(paramNames.hasMoreElements()) {
			path = paramNames.nextElement();
			if("select".equals(path)) {
				//		if(action.equals("select")) {
				if(userid != null && !userid.equals("")) {
					MemberVO member = dao.selectMember(userid);
					request.setAttribute("member", member);
					path = "update";
				}else {
					//userid가 세션에 없을 경우 (로그인 하지 않았을 경우)
					request.setAttribute("message", "NOT_LOGGED_IN_USER");
					path = "login";
				}
			}else if("delete".equals(path)){ 
				path = "delete";			
			}else if("join".equals(path)){ 
				//forward to join.jsp

			}else if("list".equals(path)){
				request.setAttribute("members", dao.selectAllMembers());
				path = "memberlist";			
			}else {
				request.setAttribute("message", "NO_ACTION");
				path = "login";
			}
		}
		RequestDispatcher disp = request.getRequestDispatcher("/WEB-INF/view/member/"+path+".jsp");
		disp.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		Enumeration<String> paramNames= request.getParameterNames();
		String path = "login";
		if(paramNames.hasMoreElements()) {
			path = paramNames.nextElement();
			if("update".equals(path)) {
				try {
					String userid = request.getParameter("userid");
					String password = request.getParameter("password");
					String name = request.getParameter("name");		
					String phone = request.getParameter("phone");
					String address = request.getParameter("address");
					
					MemberVO member = new MemberVO();
					member.setUserid(userid);
					member.setPassword(password);
					member.setName(name);
					member.setPhone(phone);
					member.setAddress(address);
					
					dao.update(member);
					request.setAttribute("message", "UPDATED_MEMBER_INFO");
					request.setAttribute("member", member);
					path = "update";
				}catch(Exception e){
					request.setAttribute("message", e.getMessage());
					e.printStackTrace();
					path = "error";
				}
			}else if("delete".equals(path)){
				try {
					HttpSession session = request.getSession();
					MemberVO member = new MemberVO();
					member.setUserid((String)session.getAttribute("userid"));
					member.setPassword(request.getParameter("password"));
					if(dao.delete(member) > 0) {
						session.invalidate();//삭제되었으면 로그아웃 처리
						response.sendRedirect("/");//메인 페이지로 이동
						return;
					}else {
						request.setAttribute("message", "DELETE_FAIL");
						path = "error";
					}
				}catch(Exception e){
					request.setAttribute("message", e.getMessage());
					e.printStackTrace();
					path = "error";
				}
			}else if("join".equals(path)) {
				try {
					HttpSession session = request.getSession();
	
					String userid = request.getParameter("userid");
					String password = request.getParameter("password");
					String name = request.getParameter("name");		
					String phone = request.getParameter("phone");
					String address = request.getParameter("address");
	
					MemberVO member = new MemberVO();
					member.setUserid(userid);
					member.setPassword(password);
					member.setName(name);
					member.setPhone(phone);
					member.setAddress(address);
					
					dao.insert(member);
					session.invalidate();
					logger.debug("join");
					response.sendRedirect("view?member/login");
					return;
				}catch(Exception e){
					request.setAttribute("message", e.getMessage());
					e.printStackTrace();
					path = "error";
				}
			}else {
				request.getSession().invalidate();//회원가입시 로그인했던 사용자 로그아웃 시킴
			}

		}		
//		4. jsp로 forward
		RequestDispatcher disp = request.getRequestDispatcher("/WEB-INF/view/member/" + path + ".jsp");
		disp.forward(request, response);
		//저장 후 모든 회원정보를 보여주는 페이지로 이동
		//서블릿 실행한 다음 서블릿을 호출해야 할 경우 sendRedirect
//		response.sendRedirect("member?select");
	}

}
