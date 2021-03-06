﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="nav.aspx.vb" Inherits="nav" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="st-menu st-effect-1">
	<div class="fullwidth site-infos">
		<div class="logo">
			<a href="index.html">
				<img src="img/travelogue-logo.png" alt="Travelogue" >
			</a>
		</div>
		<h3 class="section-title">Travelogue</h3>
		<span class="section-description">The journey of a thousand miles begins with a single step.</span>
	</div>
	<nav class="fullwidth sidebar-navigation-menu">
		<ul>
			<li><a href="Home.aspx"><i class="fa fa-home"></i>Home</a></li>
			<li><a href="travelEntry.aspx"><i class="fa fa-pencil-square-o"></i>Category</a></li>
			<li><a href="gallery.html"><i class="fa fa-picture-o"></i>Gallery</a></li>
			<li><a href="about.html"><i class="fa fa-heart"></i>About</a></li>
			<li><a href="features.html"><i class="fa fa-star"></i>Features</a></li>
			<li><a href="contact.html"><i class="fa fa-phone"></i>Contact</a></li>
		</ul>
	</nav>
	<div class="fullwidth newsletter">
		<div id="mc_embed_signup">
			<h4 class="section-title">Newsletter</h4>
			<span class="section-description">Subscribe and get the latest news about events and collections right to your inbox.</span>
		    <div id="email">
				<form action="php/subscribe.php" id="invite" method="POST">
					<input type="text" placeholder="Enter email address" name="email" id="address" data-validate="validate(required, email)"/>
					<button type="submit" class="hidden">Submit</button>
					<span id="result" class="section-description"></span>
				</form> 
			</div>
		</div>
	</div>

	<div class="fullwidth sidebar-social-networks">
		<ul>
			<li class="facebook"><a href="#"><i class="fa fa-facebook"></i></a></li>
			<li class="twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
			<li class="googleplus"><a href="#"><i class="fa fa-google-plus"></i></a></li>
			<li class="youtube"><a href="#"><i class="fa fa-youtube"></i></a></li>
			<li class="pinterest"><a href="#"><i class="fa fa-pinterest"></i></a></li>
			<li class="linkedin"><a href="#"><i class="fa fa-linkedin"></i></a></li>
		</ul>
	</div>
	<div class="fullwidth bottom-links">
		<p>2014 © Travelogue. All rights reserved.</p>
	</div>
</div>
    </form>
</body>
</html>
