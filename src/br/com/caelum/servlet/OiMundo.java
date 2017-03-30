package br.com.caelum.servlet;

import java.io.*;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.http.*;

public class OiMundo extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Calendar data = Calendar.getInstance();
		
		PrintWriter out = response.getWriter();

		out.println("<html>");
		out.println("<head>");
		out.println("<title>Primeira Servlet</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>Oi mundo Servlet!</h1>");
		out.println("<h2>Hora atual: " + data.getTime() + "</h2>");
		out.println("</body>");
		out.println("</html>");
	}
}
