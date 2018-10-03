<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="college.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Education</title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     <link href="css/style.css" rel="stylesheet" />

    </head>
<body>
     <div class="container-fluid container-fixed-top ">  
    <div class="header">    
      <div class="container " style="padding-top:20px">  
        <div> <span class="glyphicon glyphicon-phone"></span> +917895674326 &nbsp; &nbsp;  <span class="glyphicon glyphicon-envelope"></span> 
          <a href="#" >pannainfotech@yahoo.com</a></div> 
<br />
          <div >
       
      <div  style="float:left">
             <img src="image/logo.jpg" class="img-rounded"/> 
         </div>
          
              <div  style="float:right; margin-left:0px">
                  <span class="glyphicon glyphicon-search"></span>   <input id="search" type="text" placeholder="Search " />
            <a href="#" class="btn btn-primary">Submit</a>
<h2>Education</h2>
              </div>
          </div>
       </div>

        </div>
       <br />

<nav class="navbar navbar-inverse ">
  <div class="container">
    
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">About Us</a></li>
      <li><a href="#">Portfolio</a></li>
      <li><a href="#">Contact Us</a></li>
    </ul>
  </div>
</nav>
       
<div class="container-fluid">
 
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    
    
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="image/7.jpg" alt="Los Angeles" style="width:100%; height:600px">
        <div class="carousel-caption">
        <h1>Growth</h1>
        <p>“Taking an image, freezing a moment, reveals how rich reality truly is.”</p>
        <a href="Home.aspx" class="btn btn-info" role="button">Explore More</a>
           
      </div>
      </div>

      <div class="item">
        <img src="image/6.jpg" alt="Chicago" style="width:100%;height:600px">
        <div class="carousel-caption">
        <h1>Knowledge</h1>
        <p>“There is one thing the photograph must contain, the humanity of the moment.”</p>
        
      <a href="Home.aspx" class="btn btn-info" role="button">Explore More</a>
      </div>
      </div>
    
      <div class="item">
        <img src="image/5.jpg" alt="New york" style="width:100%;height:600px">
        <div class="carousel-caption">
        <h1>Carrier</h1>
        <p>“We are making photographs to understand what our lives mean to us.”</p>
        <a href="Home.aspx" class="btn btn-info" role="button">Explore More</a>
      </div>
      </div>
       <div class="item">
        <img src="image/2.jpg" alt="New york" style="width:100%;height:600px">
        <div class="carousel-caption">
        <h1>Future</h1>
        <p>"A thing that you see in my pictures is that I was not afraid to fall in love with these people.”</p>
     <a href="Home.aspx" class="btn btn-info" role="button">Explore More</a>
      </div>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
    </div>
</body>
</html>
