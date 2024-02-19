<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="home.css">
<style type="text/css">
	body
	{
		background: url("./hotelbac.jpg");
		background-repeat: no-repeat;
		background-size: cover;
	}

	button{
		background-color:lightblue; margin-left:10px; border-radius:10px; padding:10px;width:200px;
	}
	button a{
		color:white; font-width:bold; font-size:15px; text-align: center;
	}
</style>
<title>Hotel</title>
</head>
<body>
	<nav class="navbar">
		<div class="navdiv">
		   <div class="logo"><a href="#">INDIAN TOURISM</a></div>
		   <ul>
		   <li><a href="index.jsp">HOME</a></li>
		   	<li><a href="tour.jsp">TOUR</a></li>
			<li><a href="hotel.jsp">HOTEL</a></li>
			<li><a href="owntour.jsp">CREATE YOUR OWN TOUR</a></li>
			<li><a href="aboutus.jsp">ABOUT US</a></li>
			<li><a href="contact.jsp">CONTACT US</a></li>
			<li><a href="logout">LOGOUT</a></li>
		   </ul>
		</div>
	</nav>

	<table>
		<thead>
			<tr>
				<th colspan="2"><h1>HOTELS</h1></th>
			</tr>
			<tr>
				<td><img alt="h1" src="./image1.jpg" height="400px" width="700px"></td>
				<td><h1>Puri Beach Resort, Puri</h1>
				<p><h2>Best Price Guarantee. Book at Puri Beach Resort, Puri. No Reservation Costs. Great Rates. Hotels. Apartments. Villas. Read Real Guest Reviews. Hostels. Great Choice. Airport Taxi available. Motels. Flight + Hotel. 24/7 Customer Service. Amenities: Parking, 24 Hour Front Desk, Restaurant.</h2></p>
				<button><a href="bookhotel.jsp?place=Puri Beach Resort ">BOOK NOW</a></button>
				</td>
			</tr>
			<tr>
				<td><h1>Hotel East West, Puri</h1>
					<p><h2>The hotel features a concierge and room service. Plus, guests can enjoy a pool and an on-site restaurant, which have made this a popular choice among travellers ...</h2></p>
					<button><a href="bookhotel.jsp?place=Hotel East West ">BOOK NOW</a></button>
				</td>
				<td><img alt="" src="./image2.jpg" height="400px" width="700px"></td>
			</tr>
			<tr>
				<td><img alt="" src="./image3.jpg" height="400px" width="700px"></td>
				<td>
					<h1>Joey's Hostel Agra</h1>
					<p><h2>Great Rates, No Booking Fees — Get instant confirmation. Choose from a wide range of properties which Booking.com offers! Choose From a Wide Range of Properties Which Booking.com Offers. Search Now! Read Real Guest Reviews.</h2></p>
					<button><a href="bookhotel.jsp?place=Joey's Hostel Agra ">BOOK NOW</a></button>
				</td>
			</tr>
			<tr>
				<td>
					<h1>Hotel Blossom Rest house near Taj Mahal</h1>
					<p><h2>Located in Nagla Dhīmar, a 4-minute walk from Taj Mahal, Hotel Blossom Rest house Near Tajmahal provides accommodations with a garden, free private parking, ...</h2></p>
					<button><a href="bookhotel.jsp?place=Hotel Blossom Rest house ">BOOK NOW</a></button>
				</td>
				<td><img alt="" src="./image4.jpg" height="400px" width="700px"></td>
			</tr>
			<tr>
				<td><img alt="" src="./image5.jpg" height="400px" width="700px"></td>
				<td>
					<h1>Hotel Pine N Peak,Kashmir</h1>
					<p><h2>Book at Hotel Pine N Peak, Pahalgam Pahalgām. No Reservation Costs. Great Rates. Choose From a Wide Range of Properties Which Booking.com Offers.</h2></p>
					<button><a href="bookhotel.jsp?place=Hotel Pine N Peak ">BOOK NOW</a></button>
				</td>
			</tr>
			<tr>
				<td>
					<h1>Royal Hillton , Kashmir</h1>
					<p><h2>WINTER WONDERLAND. ROYAL HILLTON looks absolutely pristine covered in milky white snow in the winter season. “Video tour experience that allows travelers ...
							Missing: window ‎| Show results with</h2></p>
							<button><a href="bookhotel.jsp?place=Royal Hillton ">BOOK NOW</a></button>
				</td>
				<td><img alt="" src="./image6.jpg" height="400px" width="700px"></td>
			</tr>
		</thead>
	</table>
</body>
</html>