CREATE DATABASE RESTAURANT;
USE RESTAURANT;

DROP DATABASE RESTAURANT;

CREATE TABLE Navbar (
	id INT IDENTITY(5, 1) PRIMARY KEY not null,
	[name] NVARCHAR(50),
	link NVARCHAR(MAX),
	meta NVARCHAR(50),
	hide BIT,
	[order] INT,
	datebegin SMALLDATETIME
)

CREATE TABLE Logo (
	id INT IDENTITY(2, 1) PRIMARY KEY not null,
	img NVARCHAR(100),
	meta NVARCHAR(50),
	hide BIT,
	[order] INT,
	datebegin SMALLDATETIME
)

CREATE TABLE Social (
	id INT IDENTITY(5, 1) PRIMARY KEY not null,
	[name] NVARCHAR(50),
	link NVARCHAR(MAX),
	meta NVARCHAR(50),
	hide BIT,
	[order] INT,
	datebegin SMALLDATETIME
)

CREATE TABLE Offer (
	id INT IDENTITY(1, 1) PRIMARY KEY not null,
	info NVARCHAR(100),
	meta NVARCHAR(50),
	hide BIT,
	[order] INT,
	datebegin SMALLDATETIME
)

CREATE TABLE FoodStyle (
	id INT IDENTITY(4, 1) PRIMARY KEY not null,
	[name] NVARCHAR(100),
	img NVARCHAR(100),
	link NVARCHAR(MAX),
	meta NVARCHAR(50),
	hide BIT,
	[order] INT,
	datebegin SMALLDATETIME
)

CREATE TABLE Food (
	id INT IDENTITY(25, 1) PRIMARY KEY not null,
	[name] NVARCHAR(100),
	img NVARCHAR(100),
	price float,
	discountprice float,
	describe NVARCHAR(MAX),
	sales int,
	[type] NVARCHAR(50),
	footstyle NVARCHAR(50),
	link NVARCHAR(MAX),
	meta NVARCHAR(50),
	hide BIT,
	[order] INT,
	datebegin SMALLDATETIME
)
CREATE TABLE Story (
	id INT IDENTITY(1, 1) PRIMARY KEY not null,
	[name] NVARCHAR(100),
	content NVARCHAR(MAX),
	phonenum VARCHAR(20),
	link NVARCHAR(MAX),
	imgbanner NVARCHAR(100),
	img1 NVARCHAR(100),
	img2 NVARCHAR(100),
	img3 NVARCHAR(100),
	meta NVARCHAR(50),
	hide BIT,
	[order] INT,
	datebegin SMALLDATETIME
)

CREATE TABLE Contact (
	id INT IDENTITY(2, 1) PRIMARY KEY not null,
	[address] NVARCHAR(MAX),
	timeopen NVARCHAR(50),
	phonenum NVARCHAR(50),
	email VARCHAR(50),
	lunchdate NVARCHAR(50),
	lunchtime NVARCHAR(50),
	dinnerdate NVARCHAR(50),
	dinnertime NVARCHAR(50),
	meta NVARCHAR(50),
	hide BIT,
	[order] INT,
	datebegin SMALLDATETIME
)

CREATE TABLE OurStrength (
	id INT IDENTITY(4, 1) PRIMARY KEY not null,
	img NVARCHAR(100),
	[name] NVARCHAR(100),
	content NVARCHAR(MAX),
	meta NVARCHAR(50),
	hide BIT,
	[order] INT,
	datebegin SMALLDATETIME
)

CREATE TABLE UpcomingEvent (
	id INT IDENTITY(3, 1) PRIMARY KEY not null,
	img NVARCHAR(100),
	eventdate VARCHAR(15),
	content NVARCHAR(50),
	title NVARCHAR(MAX),
	meta NVARCHAR(50),
	hide BIT,
	[order] INT,
	datebegin SMALLDATETIME
)

CREATE TABLE Banner (
	id INT IDENTITY(3, 1) PRIMARY KEY not null,
	img NVARCHAR(100),
	headtitle NVARCHAR(100),
	title NVARCHAR(100),
	content NVARCHAR(200),
	link NVARCHAR(MAX),
	meta NVARCHAR(50),
	hide BIT,
	[order] INT,
	datebegin SMALLDATETIME
)

CREATE TABLE Background (
	id INT IDENTITY(10, 1) PRIMARY KEY not null,
	namepage NVARCHAR(50),
	img NVARCHAR(100),
	meta NVARCHAR(50),
	hide BIT,
	[order] INT,
	datebegin SMALLDATETIME
)

CREATE TABLE Bill (
	id INT IDENTITY(10, 1) PRIMARY KEY not null,
	[name] NVARCHAR(50),
	phonenum NVARCHAR(50),
	[address] NVARCHAR(MAX),
	email VARCHAR(50),
	foodname NVARCHAR(50),
	quantity int,
	price float,
	total float,
	meta NVARCHAR(50),
	hide BIT,
	[order] INT,
	datebegin SMALLDATETIME
)

CREATE TABLE ShopCart (
	id INT IDENTITY(10, 1) PRIMARY KEY not null,
	foodname NVARCHAR(50),
	quantityfood int,
	foodprice float,
	quantitytable int,
	tableprice float,
	meta NVARCHAR(50),
	hide BIT,
	[order] INT,
	datebegin SMALLDATETIME
)

CREATE TABLE [User] (
	id INT IDENTITY(10, 1) PRIMARY KEY not null,
	username NVARCHAR(50), 
	[password] NVARCHAR(50),
	[name] NVARCHAR(50), 
	phonenum NVARCHAR(50),
	[address] NVARCHAR(MAX),
	email VARCHAR(50),
	meta NVARCHAR(50),
	hide BIT,
	[order] INT,
	datebegin SMALLDATETIME
)

GO

SET IDENTITY_INSERT Background ON
SET IDENTITY_INSERT FoodStyle OFF 

INSERT INTO Navbar(id, [name], link, meta, hide, [order], datebegin) VALUES 
(0, 'HOME', '', '', 1, 1, GETDATE()),
(1, 'MENUS', '', 'Food-Menu/Dessert', 1, 2, GETDATE()),
(2, 'ABOUT US', '', '#about', 1, 3, GETDATE()),
(3, 'OUR CHEFS', '', 'Our-Chef', 1, 4, GETDATE()),
(4, 'CONTACT', '', 'Contact', 1, 5, GETDATE());

INSERT INTO Logo(id, img, meta, hide, [order], datebegin) VALUES 
(0, 'logo.svg', '', 1, 1, GETDATE());

INSERT INTO Social(id, [name], link, meta, hide, [order], datebegin) VALUES 
(0, 'FACEBOOK', '', '', 1, 1, GETDATE()),
(1, 'INSTAGRAM', '', '', 1, 2, GETDATE()),
(2, 'TWITTER', '', '', 1, 3, GETDATE()),
(3, 'YOUTUBE', '', '', 1, 4, GETDATE()),
(4, 'GOOGLE MAP', '', '', 1, 5, GETDATE());

INSERT INTO Offer(id, info, meta, hide, [order], datebegin) VALUES 
(0, '30% Off.', '', 1, 1, GETDATE());

INSERT INTO Story(id, [name], content, phonenum, link, imgbanner, img1, img2, img3, meta, hide, [order], datebegin) VALUES 
(0, 'Every dish has its own story', 'Sanders was born in 1890 in Henryville, IN. When he was six years old, his father passed away leaving 
Sanders to cook and care for his siblings. In seventh grade, he dropped out of school and left home to go work as a farmhand. Already turning 
into a tough cookie.', '+80 (400) 123 4567', '', 'about-banner.jpg', 'about-abs-image.jpg', 'badge-2.png',
'shape-3.png','', 1, 1, GETDATE());

INSERT INTO Contact(id, [address], timeopen, phonenum, email, lunchdate, lunchtime, dinnerdate, dinnertime, meta, hide, [order], datebegin) VALUES 
(0, 'Restaurant St, Delicious City, London 9578, UK', '8.00 am to 10.00 pm', '+1 123 456 7890', 
'booking@grilli.com', 'Monday to Sunday', '11.00 am - 2.30pm', 'Monday to Sunday', '05.00 pm - 10.00pm', '', 1, 1, GETDATE());

INSERT INTO OurStrength(id, img, [name], content, meta, hide, [order], datebegin) VALUES  
(0, 'features-icon-1.png', 'Hygienic Food', 'Lorem Ipsum is simply dummy printing and typesetting.', '', 1, 1, GETDATE()),
(1, 'features-icon-2.png', 'Fresh Environment', 'Lorem Ipsum is simply dummy printing and typesetting.', '', 1, 2, GETDATE()),
(2, 'features-icon-3.png', 'Skilled Chefs', 'Lorem Ipsum is simply dummy printing and typesetting.', '', 1, 3, GETDATE()),
(3, 'features-icon-4.png', 'Event & Party', 'Lorem Ipsum is simply dummy printing and typesetting.', '', 1, 4, GETDATE());

INSERT INTO UpcomingEvent(id, img, eventdate, content, title, meta, hide, [order], datebegin) VALUES 
(0, 'event-1.jpg', '15/09/2022', 'FOOD, FLAVOUR', 'Flavour so good you’ll try to eat with your eyes.', '', 1, 1, GETDATE()),
(1, 'event-2.jpg', '08/09/2022', 'HEALTHY FOOD', 'Flavour so good you’ll try to eat with your eyes.', '', 1, 2, GETDATE()),
(2, 'event-3.jpg', '03/09/2022', 'RECIPIE', 'Flavour so good you’ll try to eat with your eyes.', '', 1, 3, GETDATE());

INSERT INTO Banner(id, img, headtitle, title, content, link, meta, hide, [order], datebegin) VALUES 
(0, 'hero-slider-1.jpg', 'Tradational & Hygine', 'For the love of delicious food', 'Come with family & feel the joy of mouthwatering food', '', '', 1, 1, GETDATE()),
(1, 'hero-slider-2.jpg', 'delightful experience', 'Flavors Inspired by the Seasons', 'Come with family & feel the joy of mouthwatering food', '', '', 1, 2, GETDATE()),
(2, 'hero-slider-3.jpg', 'amazing & delicious', 'Where every flavor tells a story', 'Come with family & feel the joy of mouthwatering food', '', '', 1, 3, GETDATE());

INSERT INTO Food(id, [name], img, price, discountprice, describe, sales, [type], footstyle, link, meta, hide, [order], datebegin) VALUES 
(0, 'Greek Salad', 'menu-1.png', 25.50, NULL, 'Tomatoes, green bell pepper, sliced cucumber onion, olives, and feta cheese.', 120, 'SEASONAL', 'Dessert', '', '', 1, 1, GETDATE()),
(1, 'Butternut Pumpkin', 'menu-3.png', 10.00, NULL, 'Typesetting industry lorem Lorem Ipsum is simply dummy text of the priand.', 100, '', 'Dessert', '', '', 1, 2, GETDATE()),
(2, 'Olivas Rellenas', 'menu-5.png', 20.00, NULL, 'Avocados with crab meat, red onion, crab salad stuffed red bell pepper and green bell pepper.', 90, '', 'Dessert', '', '', 1, 3, GETDATE()),
(3, 'Lasagne', 'menu-2.png', 40.00, NULL, 'Vegetables, cheeses, ground meats, tomato sauce, seasonings and spices', 50, '', 'Dessert', '', '', 1, 4, GETDATE()),
(4, 'Tokusen Wagyu', 'menu-4.png', 39.00, NULL, 'Vegetables, cheeses, ground meats, tomato sauce, seasonings and spices.', 45, 'NEW', 'Dessert', '', '', 1, 5, GETDATE()),
(5, 'Opu Fish', 'menu-6.png', 49.00, NULL, 'Vegetables, cheeses, ground meats, tomato sauce, seasonings and spices', 30, '', 'Dessert', '', '', 1, 6, GETDATE()),
(6, 'Greek Salad', 'menu-1.png', 25.50, NULL, 'Tomatoes, green bell pepper, sliced cucumber onion, olives, and feta cheese.', 120, 'SEASONAL', 'Appetizers', '', '', 1, 1, GETDATE()),
(7, 'Butternut Pumpkin', 'menu-3.png', 10.00, NULL, 'Typesetting industry lorem Lorem Ipsum is simply dummy text of the priand.', 100, '', 'Appetizers', '', '', 1, 2, GETDATE()),
(8, 'Olivas Rellenas', 'menu-5.png', 20.00, NULL, 'Avocados with crab meat, red onion, crab salad stuffed red bell pepper and green bell pepper.', 90, '', 'Appetizers', '', '', 1, 3, GETDATE()),
(9, 'Lasagne', 'menu-2.png', 40.00, NULL, 'Vegetables, cheeses, ground meats, tomato sauce, seasonings and spices', 50, '', 'Appetizers', '', '', 1, 4, GETDATE()),
(10, 'Tokusen Wagyu', 'menu-4.png', 39.00, NULL, 'Vegetables, cheeses, ground meats, tomato sauce, seasonings and spices.', 45, 'NEW', 'Appetizers', '', '', 1, 5, GETDATE()),
(11, 'Opu Fish', 'menu-6.png', 49.00, NULL, 'Vegetables, cheeses, ground meats, tomato sauce, seasonings and spices', 30, '', 'Appetizers', '', '', 1, 6, GETDATE()),
(12, 'Greek Salad', 'menu-1.png', 25.50, NULL, 'Tomatoes, green bell pepper, sliced cucumber onion, olives, and feta cheese.', 120, 'SEASONAL', 'Drinks', '', '', 1, 1, GETDATE()),
(13, 'Butternut Pumpkin', 'menu-3.png', 10.00, NULL, 'Typesetting industry lorem Lorem Ipsum is simply dummy text of the priand.', 100, '', 'Drinks', '', '', 1, 2, GETDATE()),
(14, 'Olivas Rellenas', 'menu-5.png', 20.00, NULL, 'Avocados with crab meat, red onion, crab salad stuffed red bell pepper and green bell pepper.', 90, '', 'Drinks', '', '', 1, 3, GETDATE()),
(15, 'Lasagne', 'menu-2.png', 40.00, NULL, 'Vegetables, cheeses, ground meats, tomato sauce, seasonings and spices', 50, '', 'Drinks', '', '', 1, 4, GETDATE()),
(16, 'Tokusen Wagyu', 'menu-4.png', 39.00, NULL, 'Vegetables, cheeses, ground meats, tomato sauce, seasonings and spices.', 45, 'NEW', 'Drinks', '', '', 1, 5, GETDATE()),
(17, 'Opu Fish', 'menu-6.png', 49.00, NULL, 'Vegetables, cheeses, ground meats, tomato sauce, seasonings and spices', 30, '', 'Drinks', '', '', 1, 6, GETDATE()),
(18, 'Greek Salad', 'menu-1.png', 25.50, NULL, 'Tomatoes, green bell pepper, sliced cucumber onion, olives, and feta cheese.', 120, 'SEASONAL', 'Entree', '', '', 1, 1, GETDATE()),
(19, 'Butternut Pumpkin', 'menu-3.png', 10.00, NULL, 'Typesetting industry lorem Lorem Ipsum is simply dummy text of the priand.', 100, '', 'Entree', '', '', 1, 2, GETDATE()),
(20, 'Olivas Rellenas', 'menu-5.png', 20.00, NULL, 'Avocados with crab meat, red onion, crab salad stuffed red bell pepper and green bell pepper.', 90, '', 'Entree', '', '', 1, 3, GETDATE()),
(21, 'Lasagne', 'menu-2.png', 40.00, NULL, 'Vegetables, cheeses, ground meats, tomato sauce, seasonings and spices', 50, '', 'Entree', '', '', 1, 4, GETDATE()),
(22, 'Tokusen Wagyu', 'menu-4.png', 39.00, NULL, 'Vegetables, cheeses, ground meats, tomato sauce, seasonings and spices.', 45, 'NEW', 'Entree', '', '', 1, 5, GETDATE()),
(23, 'Opu Fish', 'menu-6.png', 49.00, NULL, 'Vegetables, cheeses, ground meats, tomato sauce, seasonings and spices', 30, '', 'Entree', '', '', 1, 6, GETDATE()),
(24, 'Lobster Tortellini', 'special-dish-banner.jpg', 40.00, 20.00, 'Vegetables, cheeses, ground meats, tomato sauce, seasonings and spices', 30, 'SPECIAL', '', '', '', 1, 7, GETDATE());

INSERT INTO FoodStyle(id, [name], img, link, meta, hide, [order], datebegin) VALUES 
(0, 'Dessert', 'service-1.jpg', '', 'Dessert', 1, 1, GETDATE()),
(1, 'Appetizers', 'service-2.jpg','', 'Appetizers', 1, 2, GETDATE()),
(2, 'Drinks', 'service-3.jpg','', 'Drinks', 1, 3, GETDATE()),
(3, 'Entree', 'service-3.jpg','', 'Entree', 1, 3, GETDATE());

INSERT INTO Background(id, namepage, img, meta, hide, [order], datebegin) VALUES 
(0, 'body-login', 'hero-slider-1.jpg', '', 1, 1, GETDATE()),
(1, 'section-subtitle-after', 'separator.svg','', 1, 2, GETDATE()),
(2, 'has-before-before', 'img-pattern.svg','', 1, 3, GETDATE()),
(3, 'abs-img-1-before', 'img-pattern.svg','', 1, 4, GETDATE()),
(4, 'abs-img-2-before', 'badge-2-bg.png','', 1, 5, GETDATE()),
(5, 'footer-brand', 'footer-form-bg.png','', 1, 6, GETDATE()),
(6, 'footer-brand-before', 'footer-form-pattern.svg','', 1, 7, GETDATE()),
(7, 'footer-brand-after', 'footer-form-pattern.svg','', 1, 8, GETDATE());