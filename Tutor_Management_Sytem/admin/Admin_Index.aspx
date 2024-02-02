<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin_Dashboard.master" AutoEventWireup="true" CodeFile="Admin_Index.aspx.cs" Inherits="admin_Admin_Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <br />
    <div class="row">
        <div class="col-md-12 p-4 bg-dark text-white text-center">
            <h1>ADMIN HOME PAGE</h1>
        </div>
    </div>
    <br />
    

    
    <!-- Carousel -->
<div id="demo" class="carousel slide" data-bs-ride="carousel">

  <!-- Indicators/dots -->
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
  </div>

  <!-- The slideshow/carousel -->
  <div class="carousel-inner">
    <div class="carousel-item active">
           <img src="images/ai-generated-8309926_1280.jpg"   class="d-block w-100 h-100"/>

       
    </div>
    <div class="carousel-item">
      <img src="images/distance-learning-5735149_1280.jpg"  class="d-block w-100" />
    </div>
    <div class="carousel-item">
        <img src="images/distance-learning-6831600_1280.png"   class="d-block w-100 h-100"/>
    </div>
  </div>

  <!-- Left and right controls/icons -->
  <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
  </button>
</div>




</asp:Content>

