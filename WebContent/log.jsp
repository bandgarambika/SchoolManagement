<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <title>Title</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS v5.2.1 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <style>
      
   
      .btn:active {

  
      transform: translateY(10px);
}
      
.img-fluid{

  opacity: 0.5;
  background-attachment: fixed;
 
}

.btnGroup{
position: absolute;
top: 42%;
left:5%;
right:3%;
}

.btn{
  padding: 7% 50px;
  margin: 10px;
  font-size: 25px;
  border-radius: 20px;
}
.roundedImg{
position: absolute;
left: 40%;
z-index: 1;
border-radius: 50%;
}
    </style>

</head>

<body>
  <header>
    
    <!-- place navbar here -->
  </header>
  <main> 
    <section>
      <div class="text-center">
        <img src="images/logo.jpg" class="roundedImg mt-2" alt="logo" height="250px" >
      
      <img src="images/school2.jpg" class="img-fluid" alt="school2">
      </div>
    <div class="container ">
     
    <div class="row mt-5 btnGroup">
    <div class="col-md-3 ">
       <a href="Acc_Login.jsp">
     <button type="button" class="btn btn-secondary w-100 ">Account Login</button></a>
    </div>

    <div class="col-md-3">
    <a href="Login.jsp">
    <button type="button" class="btn btn-success w-100 " >Student Login</button></a>
    </div>

    <div class="col-md-3">
    <a href="PrincipleLogin.jsp">
    <button type="button" class="btn btn-primary w-100 "> Principle Login</button></a>
    </div>

    <div class="col-md-3">
    <a href="RegistarLogin.jsp">
      <button type="button" class="btn btn-dark w-100 ">Registar Login</button></a>
      </div>
    
    </div>
    </div>
    </section>
    
  </main>
  <footer>
    <!-- place footer here -->
  </footer>
  <!-- Bootstrap JavaScript Libraries -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
    integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
  </script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
    integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
  </script>
</body>

</html>