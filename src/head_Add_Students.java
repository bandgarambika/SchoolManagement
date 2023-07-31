

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
@WebServlet("/head_Add_Students")
public class head_Add_Students extends HttpServlet {
	private static final long serialVersionUID = 1L;
	PreparedStatement ps;
	ResultSet rs;
	Connection connection; 
	int i,count;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public head_Add_Students() {
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
		String classname=request.getParameter("classname");
		String age=request.getParameter("age");
		String blood_group=request.getParameter("blood_group");
		String mother_name=request.getParameter("mother_name");
		String sql ="insert into students(student_name,address,district,state,birthdate,gender,email,phone,classname,age,blood_group,mother_name)values(?,?,?,?,DATE_FORMAT(?,'%d-%m-%y'),?,?,?,?,?,?,?)";	
		try
		{
			
		 if(full_name.length()==0||address.length()==0||district.length()==0||state.length()==0|| birthdate.length()==0||
				 gender.length()==0||email.length()==0||phone.length()==0||classname.length()==0||age.length()==0||
				 blood_group.length()==0||mother_name.length()==0)
			{
			 	
			 out.println("<script type=\"text/javascript\">");
				out.println("alert('Invalid input, all fields are required');");
				out.println("location='#';");
				out.println("</script>");
			}
		else{
			System.out.println("yoo");
			ps=connection.prepareStatement(sql);
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
			ps.setString(9,classname);
			ps.setString(10,age);
			ps.setString(11,blood_group);
			ps.setString(12,mother_name);
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
			int confirm_admission=0,k;
			int primary=0,secondary=0,hsecondary=0;
			ps=connection.prepareStatement("select count(*) from students where classname=?");
			ps.setString(1,classname);
			rs=ps.executeQuery();	
			if(rs.next())
			{
				confirm_admission=rs.getInt(1);
				System.out.println("count is"+confirm_admission);
			}
			try{
			 	int class_strength=60;
			 	int pending_admission=class_strength-confirm_admission;
				if(confirm_admission!=0)
				{
				ps=connection.prepareStatement("update classes set confirm_admission=?,pending_admission=? where class_name=?");	
				ps.setInt(1,confirm_admission);
				ps.setInt(2,pending_admission);
				ps.setString(3,classname);
				 k=ps.executeUpdate(); 
				 if(k==0)
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
							out.println("alert('Information is updated Successfully in classes');");
							out.println("location='#';");
					}
				}
			}catch(Exception e){
				System.out.println(e);
			}
			try {
				
			 ps=connection.prepareStatement("select sum(primary_fee),sum(secondary_fee),sum(hsecondary_fee) from fee_format");
			 rs=ps.executeQuery();
			 while(rs.next()){
			 primary=rs.getInt(1); 
			  secondary=rs.getInt(2); 
			hsecondary=rs.getInt(3);
			}
			 System.out.print("fee is"+primary);
			}catch(Exception e){
				System.out.println(e);
			}
			try{
				int collection=primary * confirm_admission;
				int collection1=secondary * confirm_admission;
				int collection2=hsecondary * confirm_admission;
				ps=connection.prepareStatement("update student_collection set collection=? where class_name=?");
				if(classname=="Nursery")
				{
				ps.setInt(1,collection);
				ps.setString(2,classname);
				}
				 int m=ps.executeUpdate(); 
				 if(m==0)
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
							out.println("alert('Information is updated Successfully in collection');");
							out.println("location='#';");
					}

			}catch(Exception e){
				System.out.println(e);
			}
		}
		}
		catch(Exception e)
		{
			System.out.println(e);
			
		}
		}
}