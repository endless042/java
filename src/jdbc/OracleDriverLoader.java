package jdbc;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

public class OracleDriverLoader extends HttpServlet {

		public void init(ServletConfig config) throws ServletException {
			try {
				System.out.println("start oracle driver");
				Class.forName("oracle.jdbc.driver.OracleDriver");
			}catch(Exception ex) {
				throw new ServletException(ex);
			}
		}
}
