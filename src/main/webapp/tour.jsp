<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="home.css">
<title>Tour</title>
<style type="text/css">
	body{
		background: url("./tour3.jpg")
		
	}

	button{
		background-color:lightblue; margin-left:10px; border-radius:10px; padding:10px;width:200px;
	}
	button a{
		color:white; font-width:bold; font-size:15px; text-align: center;
	}
	h1,p{
		color: white;
	}
</style>
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
				<th colspan="2"><h1> PLACES</h1></th>
			 </tr>
			 <tr>
			 	<td >
			 	<h1 >Jagannath Temple</h1>
			 	<p>The Jagannath Temple is an important Hindu temple dedicated to Jagannath, a form of Vishnu–one of the trinity of supreme divinity in Hinduism. It is located in Puri in the state of Odisha, situated on the eastern coast of India. King Indradyumna of Avanti built the main temple of Jagannath at Puri. The present temple was rebuilt from the tenth century onwards, on the site of the pre-existing temples in the compound, but not the main Jagannath temple, and begun by Anantavarman Chodaganga, the first king of the Eastern Ganga dynasty. Many rumours are spread about the temple's origin, but there is no solid evidence of it. The temple is one of the 108 Abhimana Kshethram of the Vaishnavite tradition.</p>
			 	<p>The temple is famous for its annual Ratha Yatra, or chariot festival, in which the three principal deities are pulled on huge and elaborately decorated raths, or temple cars. The worship is performed by the Bhil Sabar tribal priests, as well as priests of other communities in the temple. Unlike the stone and metal icons found in most Hindu temples, the image of Jagannath is made of wood, and is ceremoniously replaced every 12 or 19 years by an exact replica. The temple is one of the Char Dham pilgrimage sites. It is also famous because many legends believe that Krishna's heart was placed here, and the material that it is made from damages the heart, so they have to change it every seven years.</p>
			 	<p>The temple is sacred to all Hindus, and especially in those of the Vaishnava traditions. Many great Vaishnava saints, such as Ramanujacharya, Madhvacharya, Nimbarkacharya, Vallabhacharya and Ramananda were closely associated with the temple. Ramanuja established the Emar Matha in the south-eastern corner of the temple, and Adi Shankaracharya established the Govardhan Math, which is the seat of one of the four Shankaracharyas. It is also of particular significance to the followers of Gaudiya Vaishnavism, whose founder, Chaitanya Mahaprabhu, was attracted to the deity, Jagannath, and lived in Puri for many years</p>			
			 	<button><a href="book.jsp?place=Jagannath ">BOOK NOW</a></button>
			 	</td>
			 	<td><img alt="jaga" src="./jagannath_temple.jpg" height="400px" width="700px"></td>
			 </tr>
			 <tr>
			 	<td><img alt="jaga" src="./taj_mahal.jpg" height="400px" width="800px"></td>
			 	<td>
			 		<h1 >Taj Mahal</h1>
			 		<p>The Taj Mahal lit. ('Crown of the Palace') is an ivory-white marble mausoleum on the right bank of the river Yamuna in Agra, Uttar Pradesh, India. It was commissioned in 1631 by the fifth Mughal emperor, Shah Jahan (r. 1628–1658) to house the tomb of his beloved wife, Mumtaz Mahal; it also houses the tomb of Shah Jahan himself. The tomb is the centrepiece of a 17-hectare (42-acre) complex, which includes a mosque and a guest house, and is set in formal gardens bounded on three sides by a crenellated wall.</p>
			 		<p>Construction of the mausoleum was essentially completed in 1643, but work continued on other phases of the project for another 10 years. The Taj Mahal complex is believed to have been completed in its entirety in 1653 at a cost estimated at the time to be around ₹32 million, which in 2023 would be approximately ₹35 billion.[7] The construction project employed some 20,000 artisans under the guidance of a board of architects led by Ustad Ahmad Lahori, the emperor's court architect. Various types of symbolism have been employed in the Taj to reflect natural beauty and divinity.</p>
			 		<p>The Taj Mahal was designated as a UNESCO World Heritage Site in 1983 for being "the jewel of Muslim art in India and one of the universally admired masterpieces of the world's heritage". It is regarded by many as the best example of Mughal architecture and a symbol of India's rich history. The Taj Mahal attracts 7-8 million visitors a year,[8] and in 2007 it was declared a winner of the New 7 Wonders of the World (2000–2007) initiative.</p>		 	
			 		<button><a href="book.jsp?place=Taj Mahal" name="taj">BOOK NOW</a></button>
			 	</td>
			 </tr>
			 <tr>
			 	<td>
			 		<h1 >Kashmir(Heaven on Earth)</h1>
			 		<p>Kashmir is the northernmost geographical region of the Indian subcontinent. Until the mid-19th century, the term "Kashmir" denoted only the Kashmir Valley between the Great Himalayas and the Pir Panjal Range. Today, the term encompasses a larger area that includes the India-administered territories of Jammu and Kashmir and Ladakh, the Pakistan-administered territories of Azad Kashmir and Gilgit-Baltistan, and the Chinese-administered territories of Aksai Chin and the Trans-Karakoram Tract.</p>
			 		<p>In 1820, the Sikh Empire, under Ranjit Singh, annexed Kashmir.[4] In 1846, after the Sikh defeat in the First Anglo-Sikh War, and upon the purchase of the region from the British under the Treaty of Amritsar, the Raja of Jammu, Gulab Singh, became the new ruler of Kashmir. The rule of his descendants, under the paramountcy  of the British Crown, lasted until the Partition of India in 1947, when the former princely state of the British Indian Empire became a disputed territory, now administered by three countries: China, India, and Pakistan.</p>
			 		<button><a href="book.jsp?place=Kashmir" name="kashmir">BOOK NOW</a></button>
			 	</td>
			 	<td><img alt="kashmir" src="./kashmir.png" height="400px" width="800px"></td>
			 </tr>
		</thead>
	</table>
	</body>
</html>