<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="register.css">
    <title>Document</title>
</head>

<body>
    
    <div class="container" style="position: absolute;">
        <div class="row justify-content-center align-items-center g-2">
            <div class="col-md-6">
                <div class="card  rounded-3 shadow">
                    
                    <div class="form" style="background-image: url(school2.jpg); ">
                    <div class="card-header"  ">
                       <b><h1 style="color: rgb(94, 4, 135); text-align: center;">Add Student </h1></b>
                    </div>
                    <div class="card-body">

                        <form action="addStudent" method="post">
                            <p>Kindly fill in this form to register.</p>
                            <div class="mb-3">
                                <label for="username"><b>student_id</b></label>
                                <input type="text" placeholder="Enter student_id" name="id" required />
                            </div>
                            <div class="mb-3">
                                <label for="username"><b>student_Name</b></label>
                                <input type="text" placeholder="Enter studenr_name" name="name" id="username"
                                    required />
                            </div>
                            <div class="mb-3">
                                <label for="username"><b>district</b></label>
                                <input type="text" placeholder="Enter district" name="district" id="username"
                                    required />
                            </div>
                            <div class="mb-3">
                                <label for="username"><b>state</b></label>
                                <input type="text" placeholder="Enter state" name="state" id="username" required />
                            </div>
                            <div class="mb-3">
                                <label for="username"><b>Birthdate</b></label>
                                <input type="date" placeholder="Enter birthdate" name="date" id="username" required />
                            </div>
                                <div class="mb-3">
                                    <div>
                                        <label for="username"><b>gender</b></label>
                                        <input type="text" placeholder="Enter Gender" name="gender" id="username"
                                            required />
                                    </div>
                                    <div>
                                        <label for="username"><b>email</b></label>
                                        <input type="text" placeholder="Enter email" name="email" id="username"
                                            required />
                                        <div>
                                        </div>
                                        <label for="username"><b>phone</b></label>
                                        <input type="text" placeholder="Enter Phone" name="phone" id="username"
                                            required />
                                    </div>
                                    <div>
                                        <label for="username"><b>classname</b></label>
                                      
                                            <select name="classname" style="width:200px; height: 25px; background: #f1f1f1;">
                                                <option value="Select">Select Option</option>
                                                 <option value="Nursery">Nursery</option>
                                                <option value="Jr.Kg">Jr.Kg</option>
                                                <option value="Sr.Kg">Sr.Kg</option>
                                                <option value="Standard I">Standard I</option>
                                                <option value="Standard II">Standard II</option>
                                                <option value="Standard III">Standard III</option>
                                                <option value="Standard IV">Standard IV</option>
                                                <option value="Standard V">Standard V</option>
                                                <option value="Standard VI">Standard VI</option>
                                                <option value="Standard VII">Standard VII</option>
                                                <option value="Standard VIII">Standard VIII</option>
                                                <option value="Standard IX">Standard IX</option>
                                                <option value="Standard X">Standard X</option></select>
                                        <div>
                                        </div> <label for="username"><b>age</b></label>
                                        <input type="text" placeholder="Enter age" name="age" id="username" required />
                                    </div>
                                    <div> <label for="username"><b>blood_group</b></label>
                                        <input type="text" placeholder="Enter blood_group" name="blood" id="username"
                                            required />
                                    </div>
                                    <div>
                                        <label for="username"><b>mother_name</b></label>
                                        <input type="text" placeholder="Enter mother_name" name="mname" id="username"
                                            required />
                                    </div>
                                    <div>
                                        <label for="username"><b>address</b></label>
                                        <input type="text" placeholder="Enter address" name="address" id="username"
                                            required />
                                    </div>
                                </div>
                            </div>
                            <div>
                                <button type="submit" class="btn btn-primary">Submit</button>
                               </div>
                    </div>
                     </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>

</html>