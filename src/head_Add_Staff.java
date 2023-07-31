

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class head_Add_Staff
 */
@WebServlet("/head_Add_Staff")
public class head_Add_Staff extends HttpServlet {
	private static final long serialVersionUID = 1L;
	PreparedStatement ps;
	ResultSet rs;
	Connection connection; 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public head_Add_Staff() {
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
		response.setContentType("html");
		PrintWriter out=response.getWriter();
		try {
			 String connectionURL = "jdbc:mysql://localhost:3306/sms";
		            connection = null; 
		            Class.forName("com.mysql.jdbc.Driver").newInstance(); 
		            connection = DriverManager.getConnection(connectionURL, "root", "vijay");
		            if(!connection.isClosed())
		                 System.out.println("Successfully connected");
		          //  connection.close();
		        }catch(Exception ex){
		           System.out.println("Unable to connect to database"+ex);
		        }
		
	//	int staff_id=Integer.parseInt(request.getParameter("staff_id"));
		String full_name=request.getParameter("full_name");
		String address=request.getParameter("address");
		String district=request.getParameter("district");
		String state=request.getParameter("state");
		String birthdate=request.getParameter("birthdate");
		String gender=request.getParameter("gender");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String type=request.getParameter("type");
		String join_date=request.getParameter("join_date");
		String department=request.getParameter("department");
		String education=request.getParameter("education");
		String post=request.getParameter("post");
		String salary=request.getParameter("salary");
		try
		{
		 
			System.out.println("yoo");
			ps=connection.prepareStatement("insert into staff(staff_name,staff_add,staff_district,staff_state,staff_birth,staff_gender,staff_email,staff_contact,staff_type,staff_join_date,staff_depart,staff_education,staff_post,staff_salary)values(?,?,?,?,DATE_FORMAT(?,'%d-%m-%y'),?,?,?,?,DATE_FORMAT(?,'%d-%m-%y'),?,?,?,?)");
			System.out.println("yoo");
		//	ps.setInt(1,PatientID);
			ps.setString(1,full_name);
			ps.setString(2,address);
			ps.setString(3,district);
			ps.setString(4,state);
			ps.setString(5,birthdate);
			ps.setString(6,gender);
			ps.setString(7,email);
			ps.setString(8,phone);
			ps.setString(9,type);
			ps.setString(10,join_date);
			ps.setString(11,department);
			ps.setString(12,education);
			ps.setString(13,post);
			ps.setString(14,salary);
			int i=ps.executeUpdate();
			if(i==0)
			{
					//JOptionPane.showMessageDialog(null,"unable to insert record!!!");
				 out.println("<script type=\"text/javascript\">");
					out.println("alert('Unable to Insert Record');");
					out.println("location='#';");
					out.println("</script>");
			}
			else
			{
				// JOptionPane.showMessageDialog(null,"information is save successfully!!!");
				 out.println("<script type=\"text/javascript\">");
					out.println("alert('Information is Save Successfully');");
					out.println("location='#';");
					out.println("</script>");
			
			}
			
		
		}
		catch(Exception e)
		{
			System.out.println(e);
			
		}
		
/*	try
		{
			
			ps=connection.prepareStatement("select patient_name,address,mobile_no,test_type,doctor_name,date,time from patient where date=2019-10-13");
		//ps.setString(1,(Date));
			rs=ps.executeQuery();
				while(rs.next())
				{
					System.out.println("im in add staff");
					Patientname=String.valueOf(rs.getString(2));
					Address=String.valueOf(rs.getString(3));
					Mobileno=String.valueOf(rs.getString(4));
					Testtype=String.valueOf(rs.getString(5));
					Doctor=String.valueOf(rs.getString(6));
					Time=String.valueOf(rs.getString(7));
					request.setAttribute("Patientname",Patientname);
					request.setAttribute("Address",Address);
					request.setAttribute("Mobileno",Mobileno);
					request.setAttribute("Testtype",Testtype);
					request.setAttribute("Doctorname",Doctor);
					request.setAttribute("Date",Date);
					request.setAttribute("Time",Time);
					request.getRequestDispatcher("appointmentinfo.jsp");
				}	
			
		}
		catch(Exception e)
		{
			System.out.println(e);
		}*/
	}

		
	

}
