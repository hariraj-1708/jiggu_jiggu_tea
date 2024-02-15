package jiggu_jiggu_tea;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/home")
public class home extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	log_in l1=new log_in();
	
	ServletContext context=getServletContext();
	String profile=(String)context.getAttribute("u11");
	
	try {
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("dev");
		EntityManager em=emf.createEntityManager();
		
		Query q=em.createQuery("select sup from sign_up sup where email=?1");
		q.setParameter(1, profile);
		sign_up s1=(sign_up) q.getSingleResult();
		String p1=(String)s1.getEmail();
		req.setAttribute("profile",s1.getEmail());
		
		
	} 
	catch (Exception e) {
		// TODO: handle exception
	}
}
}
