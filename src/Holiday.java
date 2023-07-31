
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Holiday
 */
@WebServlet("/Holiday")
public class Holiday extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Holiday() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
    	PrintWriter out=response.getWriter();
        doGet(request, response);
        String hday=request.getParameter("Day");
        String hdate=request.getParameter("date");
        String holiday=request.getParameter("Holiday");
        System.out.println(hday);
        System.out.println(hdate);
        System.out.println(holiday);
     
		

        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection connection =DriverManager.getConnection("jdbc:mysql://localhost:3306/sms", "root", "vijay");
                    if(!connection.isClosed())
                    System.out.println("Successfully connected");
                  PreparedStatement  ps=connection.prepareStatement("insert into sms.holiday(holiday,hdate,hday)values(?,?,?)");
                  ps.setString(1, holiday);
                  ps.setString(2, hdate);
                  ps.setString(3, hday);
         	     ps.execute();
         					System.out.println("Data Stored");
         					out.println("<script type=\"text/javascript\">");
         					out.println("alert('Information is Save Successfully');");
         					out.println("location='#';");
         					out.println("</script>");
//                   System.out.println("Data Stored");
//                    
//                    if(rs.next())
//                    {
//                        RequestDispatcher rd=request.getRequestDispatcher("H_dashboard.jsp"); 
//                        rd.forward(request, response);    
//                        
//                    }
//                    else
//                    {
//                        System.out.println("vv");
//                    }
                
// 				
        }
        catch (Exception e) {
        	e.printStackTrace();
    }

    }}