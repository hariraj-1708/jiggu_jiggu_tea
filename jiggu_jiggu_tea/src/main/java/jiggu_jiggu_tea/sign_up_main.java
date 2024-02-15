package jiggu_jiggu_tea;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/sign_up")
public class sign_up_main extends HttpServlet{
 
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username=(String)req.getParameter("username");
		String email=(String)req.getParameter("email");
		String password=(String)req.getParameter("password");
		
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("dev");
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		
		sign_up sup=new sign_up();
		
		try {
			Query q=em.createQuery("select sup from sign_up sup where email=?1");
			Query p=q.setParameter(1, email);
			sign_up s1=(sign_up)p.getSingleResult();
			String e1=(String)s1.getEmail();
			if (e1.equals(email)) {
				req.setAttribute("email_message", "This email is already taken");
				req.getRequestDispatcher("sign_up.jsp").forward(req, resp);
				
			} 
			else {
				
			}
		}
		catch (Exception e) {
			// TODO: handle exception
			sup.setUsername(username);
			sup.setEmail(email);
			sup.setPassword(password);
			
			et.begin();
			em.persist(sup);
			et.commit();
		
			req.getRequestDispatcher("signup_sucessfull.jsp").forward(req, resp);
		}
		
		
	}
}
