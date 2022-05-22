<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
 
  
<html lang="">
 <head>
 	<meta charset="ISO-8859-1">
  <style>
p::first-letter {
   
  color: #FF1C05;
}
</style>
<title>Kwikmart</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">
 
  </section>
</div>
<title>Spourmo | Pages | Full Width</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="../layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">
<!-- ################################################################################################ -->
<!-- ##################ac############################################################################## -->
<!-- ################################################################################################ -->
<div class="wrapper row0">
  <div id="topbar" class="hoc clear"> 
    <!-- ################################################################################################ -->
     
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
 
 
<div class="bgded overlay padtop" style="background-image:url('images/demo/backgrounds/23.jpg');"> 
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <header id="header" class="hoc clear">
    <div id="logo" class="fl_left"> 
      <!-- ################################################################################################ -->
      <h1><a href="index.html"><p>Kwikmart</p></a></h1>
      <!-- ################################################################################################ -->
    </div>
    <nav id="mainav" class="fl_right"> 
      <!-- ################################################################################################ -->
      <ul class="clear">
        <li class="active"><a href="home.jsp">Home</a></li>
        <li><a class="drop" href="#">Stock</a>
         <ul>
            <li><a href=" Add_product.jsp  ">ADD STOCK</a></li>
            <li><a href=" search_product_Update.jsp">UPDATE STOCK</a></li>
            <li><a href=" search_product.jsp">SEARCH STOCK</a></li>
            <li><a href="search_product_delete.jsp">DELETE STOCK</a></li>
            <li><a href="stock_report.jsp">REPORT</a></li>
             
          </ul>
        </li>
         <li><a class="drop" href="#">Customer</a>
          <ul>
            <li><a href="Add_coustemer.jsp">ADD CUSTOMER</a></li>
            <li><a href="Search_Coustemer.jsp">UPDATE CUSTOMER</a></li>
            <li><a href="Search_Coustemer.jsp">SEARCH CUSTOMER</a></li>
            <li><a href="Search_Coustemer.jsp">DELETE CUSTOMER</a></li>
            <li><a href="Customer_report.jsp">REPORT</a></li>
             
          </ul>
        </li>
        
        <li><a class="drop" href="#">Employee</a>
          <ul>
            <li><a href=" Add_Employee.jsp  ">ADD EMPLOYEE</a></li>
            <li><a href="Search_Employee.jsp">UPDATE EMPLOYEE</a></li>
            <li><a href=" Search_Employee.jsp">SEARCH EMPLOYEE</a></li>
            <li><a href="Search_Employee.jsp">DELETE EMPLOYEE</a></li>
            <li><a href="Employee_report.jsp">REPORT</a></li>
             
          </ul>
        </li>
        
        
         <li><a class="drop" href="#">Supplier</a>
          <ul>
            <li><a href=" Add_Supplier.jsp  ">ADD SUPPLIER</a></li>
            <li><a href="Search_Supplier.jsp">UPDATE SUPPLIER</a></li>
            <li><a href=" Search_Supplier.jsp">SEARCH SUPPLIER</a></li>
            <li><a href="Search_Supplier.jsp">DELETE SUPPLIER</a></li>
            <li><a href="Supplier_report.jsp">REPORT</a></li>
             
          </ul>
        </li>
        
        
      
      <!-- ################################################################################################ -->
    </nav>
  </header>
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <div id="pageintro" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <article>
     <h1> <p style="font-size:2vw">  </p></h1>
      
      <footer>
        
      </footer>
    </article>
    <!-- ################################################################################################ -->
  </div>
  <!-- ################################################################################################ -->
</div>
 
 <div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="content"> 
      <!-- ################################################################################################ -->
     
     
      <div id="comments">
      <center><h2>Delete Supplier Details</h2></center>
      <br/>
       
                                 <%
                                    
                                    String id  = request.getParameter("ID");
                                    String fName = request.getParameter("NAME");
                                    String lname = request.getParameter("tell");
                                    String cot = request.getParameter("comname");
                                    String email = request.getParameter("comaddre");
                                
                                   
                                    
                                    
                                    
                                    %>     
       

        <form action="deletsupp" method="post">
         
            <label for="name">Supplier ID  <span>*</span></label>
            <input type="text" name="Sid" id="id" value="<%= id %>" size="22" readonly><br/><br/>
        
            <label for="name"> Supplier Name <span>*</span></label>
            <input type="text" name="F_name" id="name" value="<%= fName %>" size="22" readonly  ><br/><br/>

           

          
            <label for="text"> Contact Number  <span>*</span></label>
            <input type="text" name="L_name" id="type" value="<%= lname %>" size="22"  readonly><br/><br/>

         
           
            <label for="url">Company Name  <span>*</span></label>
            <input type="text" name="CO_NU" id="Price" value="<%= cot %>" size="22" readonly ><br/><br/>

           
         
            <label for="url"> Company Address<span>*</span></label>
            <input type="text" name="EMAIL" id="Supplyer" value="<%= email %>" size="22" readonly ><br/><br/>

          
         
          <div><br/>
          
          
          
<br/>

            <input type="submit" name="submit" value=" DELETE">
            &nbsp;
            <input type="reset" name="reset" value="RESET FORM">
          </div>
        </form>
      </div>
      <!-- ################################################################################################ -->
    </div>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- Bottom Background Image Wrapper -->
<div class="bgded overlay" style="background-image:url('images/demo/backgrounds/BGIMG123.jpg');"> 
  <!-- ################################################################################################ -->
  <div class="wrapper row4">
    <footer id="footer" class="hoc clear"> 
      <!-- ################################################################################################ -->
      <div class="group btmspace-50">
        <div class="one_quarter first">
          <h6 class="heading">Contact us</h6>
          <p>Address : </br></p> <p>Tel : </br></p> <p>Fax : </br></p>
          <ul class="faico clear">
            <li><a class="faicon-facebook" href="https://www.facebook.com/"><i class="fab fa-facebook"></i></a></li>
            <li><a class="faicon-google-plus" href="https://www.google.com/"><i class="fab fa-google-plus-g"></i></a></li>
            <li><a class="faicon-linkedin" href="https://www.linkedin.com/feed/"><i class="fab fa-linkedin"></i></a></li>
            <li><a class="faicon-twitter" href="https://twitter.com/?lang=en"><i class="fab fa-twitter"></i></a></li>
            <li><a class="faicon-vk" href="https://vk.com/?lang=en"><i class="fab fa-vk"></i></a></li>
          </ul>
        </div>
        <div class="one_quarter">
          <h6 class="heading">Stock Arrivals</h6>
          <ul class="nospace linklist">
            <li><a href="https://www.google.com/maps/place/Nuwara+Eliya/@6.9513649,80.7459273,13z/data=!3m1!4b1!4m5!3m4!1s0x3ae380434e1554c7:0x291608404c937d9c!8m2!3d6.9497166!4d80.7891068">Nuwara eli</a></li>
            <li><a href="https://www.google.com/maps/place/Jaffna/@9.6699571,80.0109171,14z/data=!3m1!4b1!4m5!3m4!1s0x3afe53fd7be66aa5:0xc7da0d9203baf512!8m2!3d9.6614981!4d80.0255465">Jaffna</a></li>
            <li><a href="https://www.google.com/maps/place/Galle/@6.0558904,80.1769774,13z/data=!3m1!4b1!4m5!3m4!1s0x3ae173bb6932fce3:0x4a35b903f9c64c03!8m2!3d6.0535185!4d80.2209773">Galle</a></li>
            <li><a href="https://www.google.com/maps/place/Kurunegala/@7.480619,80.3227607,13z/data=!3m1!4b1!4m5!3m4!1s0x3ae3398ab06be8b9:0x1f90e4e71e885052!8m2!3d7.4817695!4d80.3608876">Kurunegala</a></li>
            <li><a href="https://www.google.com/maps/place/Polonnaruwa/@7.9341118,80.9781589,13z/data=!3m1!4b1!4m5!3m4!1s0x3afb44ba3b16ce27:0xc34997a2b3032b7c!8m2!3d7.9403384!4d81.0187984">Polonnaruwa</a></li>
          </ul>
        </div>
        <div class="one_quarter">
          <h6 class="heading">E-mail</h6>
          <p class="nospace btmspace-15">kwikmart@yahoo.com</p>
          <form action="#" method="post">
            <fieldset>
              <legend>Newsletter:</legend>
              <input class="btmspace-15" type="text" value="" placeholder="Name">
              <input class="btmspace-15" type="text" value="" placeholder="Email">
              <button class="btn" type="submit" value="submit">Submit</button>
            </fieldset>
          </form>
        </div>
        <div class="one_quarter">
          <h6 class="heading">Our Suppliers</h6>
          <ul class="nospace clear latestimg">
             <li><a class="imgover" href="https://www.atlas.lk/"><img src="images/demo/d1.png" alt=""></a></li>
            <li><a class="imgover" href="https://www.mortein.com.au/products/"><img src="images/demo/IMG_0670.jpeg" alt=""></a></li>
            <li><a class="imgover" href="https://grantha.lk/publishers/rathna-prakashakayo.html"><img src="images/demo/LOGO456.jpg" alt=""></a></li>
            <li><a class="imgover" href="https://www.cargillsceylon.com/businesses/kotmale"><img src="images/demo/KOTHMALE.jpg " alt=""></a></li>
            <li><a class="imgover" href="https://www.anchordairy.com/ph/en/products/powdered-milk/anchor-full-cream-milk.html"><img src="images/demo/ANKER.jpg " alt=""></a></li>
            <li><a class="imgover" href="https://harischandramills.com/"><img src="images/demo/HARISCHANDAR.jpg " alt=""></a></li>
            <li><a class="imgover" href="https://kadahapolaonline.com/"><img src="images/demo/KDAHAPOLA.png  " alt=""></a></li>
            <li><a class="imgover" href="https://araliyarice.com/"><img src="images/demo/ARALIYA.png " alt=""></a></li>
            <li><a class="imgover" href="https://siddhalepa.com/"><img src="images/demo/SIDDALEPA.jpg " alt=""></a></li>
          </ul>
        </div>
      </div>
      <!-- ################################################################################################ -->
      <hr class="btmspace-50">
      <!-- ################################################################################################ -->
      <nav>
        <ul class="nospace">
          <li><a href="index.html"><i class="fas fa-lg fa-home"></i></a></li>
          <li><a href="#">About</a></li>
          <li><a href="#">Contact</a></li>
          <li><a href="#">Terms</a></li>
          <li><a href="#">Privacy</a></li>
          <li><a href="#">Cookies</a></li>
          <li><a href="#">Disclaimer</a></li>
        </ul>
      </nav>
      <!-- ################################################################################################ -->
    </footer>
  </div>
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <div class="wrapper row5">
    <div id="copyright" class="hoc clear"> 
      <!-- ################################################################################################ -->
      <h6>Copyright &copy; 2018 - All Rights Reserved - <a href="#">Kwikmart</a></h6>
     <!-- <p class="fl_right">Template by <a target="_blank" href="https://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>-->
      <!-- ################################################################################################ -->
    </div>
  </div>
  <!-- ################################################################################################ -->
</div>
<!-- End Bottom Background Image Wrapper -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>





 