<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
 @import url(https://fonts.googleapis.com/css?family=Lato:300,400,700);
     

        body {
            background: ;
            color:black;
            font-family: 'Lato', Arial, sans-serif;
        }

        h1 {
            font-family: "proxima-nova",sans-serif;
            letter-spacing: -0.01em;
            font-weight: 700;
            font-style: normal;
            font-size: 60px;
            margin-left: -3px;
            line-height: 1em;
            color: black;
            text-align: center;
            margin-bottom: 8px;
            text-rendering: optimizeLegibility;
        }

        table {
            width: 60%;
            margin: auto;
        }

        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align:center;
        }
        th{
        background:#61BA6D ;
        }
        
        .btn  {
  background-color:#61BA6D ;
  color: white;
 padding: 7px 25px;
  font-size: 14px;
  cursor: pointer;
</style>
<body>
<table border=2>
        <thead>
            <tr>
             <th>Date</th>
                <th rowspan="1" colspan="2">Income</th>
                <th rowspan="1" colspan="2">Expenses</th>
                <th>Edit</th>
            </tr>
            <tr>
             <th></th>
                <th rowspan="2" width="250px">Content</th>
                <th rowspan="2">Rupees</th>
                <th rowspan="2" width="250px">Content</th>
                <th rowspan="2">Rupees</th>
               <th></th>
            </tr>
        </thead>
        <tbody>
            <tr>
            
             <td>06/02/2020</td>
                <td>Capitation fee</td>
                <td>50,000/-</td>
                
                <td>Staff Salary</td>
                <td>60,000/-</td>
             <td> <center> <button class= "btn" href="html_images.asp" value="edit">edit</button></center></td>
             

            </tr>
            <tr>
             <td>06/02/2020</td>
                <td>Donation</td>
                <td>1,00,000/-</td>
               
                <td>Recurring material</td>
                <td>20,000/-</td>
                <td> <center> <button class= "btn" href="html_images.asp" value="edit">edit</button></center></td>
                
            </tr>
            <tr>
             <td>06/02/2020</td>
                <td>Donation </td>
                <td>50,000/-</td>
               
                <td>Non-recurring material</td>
                <td>30,000/-</td>
               <td> <center> <button class= "btn" href="html_images.asp" value="edit">edit</button></center></td>
               
            </tr>
            <tr>
             <td>06/02/2020</td>
                <td>Tuition fee</td>
                <td>40,000/-</td>
             
                <td>Transportation</td>
                <td>10,000/-</td>
               <td> <center> <button class= "btn" href="html_images.asp" value="edit">edit</button></center></td>
               
            </tr>
            <tr>
             <td>06/02/2020</td>
                <td>Student welfare</td>
                <td>1,00,000/-</td>
               
                <td>Tea,snacks,meals</td>
                <td>60,000/-</td>
               <td> <center> <button class= "btn" href="html_images.asp" value="edit">edit</button></center></td>
                

            </tr>
            <tr>
             <td>06/02/2020</td>
                <td>Staff welfare</td>
                <td>70,000/-</td>
               
                <td>Miscellaneous</td>
                <td>80,000/-</td>
              <td> <center> <button class= "btn" href="html_images.asp" value="edit">edit</button></center></td>
              
            </tr>
            
            
             </tr>
            <tr>
             <td>06/02/2020</td>
                <td>Miscellaneous</td>
                <td>70,000/-</td>
               
                <td>Fixed deposites</td>
                <td>1,00,000/-</td>
              <td> <center> <button class= "btn" href="html_images.asp" value="edit">edit</button></center></td>
              
            </tr>
            
            
            <tr style="border: 2px solid; font-size:15px;">
             <th></th>
                <th style="font-weight:bold;">Total income = </th>
                <th style="font-weight:bold;">70,000/-</th>
               
                <th style="font-weight:bold;">Total Expenses = </th>
                <th style="font-weight:bold; ">1,00,000/-</th>
              <th style="border:1px solid white;"></th>
              
            </tr>
            
            
            

        </tbody>
    </table>
</body>
</html>