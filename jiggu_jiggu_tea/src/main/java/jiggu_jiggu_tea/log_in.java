package jiggu_jiggu_tea;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.persistence.metamodel.SetAttribute;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/log_in")
public class log_in extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String email=req.getParameter("email");
	String profile=email;
	String password=req.getParameter("password");
	
	try {
		
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("dev");
		EntityManager em=emf.createEntityManager();
		
		Query q=em.createQuery("select sup from sign_up sup where email=?1");
		q.setParameter(1, email);
		sign_up s1=(sign_up) q.getSingleResult();
		String p1=(String) s1.getPassword();
		String u1=(String) s1.getEmail();
		if (password.equals(p1)) {
			ServletContext context=getServletContext();
			context.setAttribute("u11", u1);
			HttpSession session=req.getSession(true);
		     req.getRequestDispatcher("home.jsp").forward(req, resp);
		} 
		else {
			req.setAttribute("wrong_pass","Incorrect Password" );
			req.getRequestDispatcher("log_in.jsp").forward(req, resp);
		}
		
	} catch (Exception e) {
		req.setAttribute("wrong_email","Incorrect Email" );
		req.getRequestDispatcher("log_in.jsp").forward(req, resp);
	}
	
}
}
