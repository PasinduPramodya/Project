<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 
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
 
<div class="bgded overlay padtop" style="background-image:url('images/demo/backgrounds/2.jpg');"> 
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
    
    <!-- ################################################################################################ -->
  </div>
  <!-- ################################################################################################ -->
</div>
<!-- End Top Background Image Wrapper -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/kwikmart";
String userId = "root";
String password = "E92243x+";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Dry Food That We Have</strong></font></h2><br><br><br><br>
<table id="tblCustomers"  style="width:90%">
<tr>

</tr>
<tr >

<td style="width:2%"><h4>Product ID</h4></td>
<td><h4>Product Name</h4></td>
<td><h4>Product Price</h4></td>
<td><h4>Product Type</h4></td>
<td><h4>Product Location</h4></td>
<td><h4>Product Supplier ID</h4></td>
<td><h4>Product Description</h4></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM kwikmart.product where Product_Type like 'd%' or Product_Type like 'D%'";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">
<td><%=resultSet.getString("Product_ID") %></td>
<td><%=resultSet.getString("Product_name") %></td>
<td><%=resultSet.getString("Product_Price") %></td>
<td><%=resultSet.getString("Product_Type") %></td>
<td><%=resultSet.getString("Product_location") %></td>
<td><%=resultSet.getString("Product_supplierr_ID") %></td>
<td><%=resultSet.getString("Product_description") %></td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<input type="button" id="btnExport" value="Export" />
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
    
    <script type="text/javascript">
        $("body").on("click", "#btnExport", function () {
            html2canvas($('#tblCustomers')[0], {
                onrendered: function (canvas) {
                    var data = canvas.toDataURL();
                    var docDefinition = {
                        content: [{
                            image: data,
                            width: 300
                        }]
                    };
                    pdfMake.createPdf(docDefinition).download("Product.pdf");
                }
            });
        });
    </script>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->

</body>
</html>





 
 