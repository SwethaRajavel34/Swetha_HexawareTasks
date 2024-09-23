CREATE DATABASE TicketBookingSystem;
USE TicketBookingSystem;
CREATE TABLE Venue (
    venue_id INT PRIMARY KEY,
    venue_name VARCHAR(100) NOT NULL,
    address VARCHAR(255) NOT NULL
);
CREATE TABLE Event (
    event_id INT PRIMARY KEY,
    event_name VARCHAR(100) NOT NULL,
    event_date DATE NOT NULL,
    event_time TIME NOT NULL,
    venue_id INT,
    total_seats INT NOT NULL,
    available_seats INT NOT NULL,
    ticket_price DECIMAL(10, 2) NOT NULL,
    event_type VARCHAR(50) NOT NULL,
    booking_id INT,
    FOREIGN KEY (venue_id) REFERENCES Venue(venue_id)
);
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    booking_id INT
);
CREATE TABLE Booking (
    booking_id INT PRIMARY KEY,
    customer_id INT,
    event_id INT,
    num_tickets INT NOT NULL,
    total_cost DECIMAL(10, 2) NOT NULL,
    booking_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (event_id) REFERENCES Event(event_id)
);


-- TASK 2 

-- 1.write a SQL query to insert at least 10 sample records into each table.
INSERT INTO Venue (venue_id, venue_name, address) VALUES 
(01, 'Grand Theater', 'usa'),
(02, 'Stadium Arena', 'usa'),
(03, 'Concert Hall', 'usa'),
(04, 'Open Air Park', 'usa'),
(05, 'City Convention Center', 'usa'),
(06, 'Community Hall', 'usa'),
(07, 'Sports Complex', 'usa'),
(08, 'Downtown Auditorium', 'usa'),
(09, 'Skyline Pavilion', 'usa'),
(10, 'Lakeside Amphitheater', 'usa');
INSERT INTO Event (event_id, event_name, event_date, event_time, venue_id, total_seats, available_seats, ticket_price, event_type, booking_id) VALUES 
(01, 'Rock Concert', '2024-10-15', '19:00:00', 01, 500, 200, 100, 'Concert', NULL),
(02, 'Football Match', '2024-11-05', '15:30:00', 02, 10000, 4500, 200, 'Sports', NULL),
(03, 'Movie Night', '2024-09-25', '20:00:00', 03, 300, 100, 2000, 'Movie', NULL),
(04, 'Art Festival', '2024-12-01', '10:00:00', 04, 800, 600, 300, 'Concert', NULL),
(05, 'Tech Conference', '2024-11-20', '09:00:00', 05, 1000, 750, 400, 'Conference', NULL),
(06, 'Basketball Game', '2024-12-05', '18:00:00', 06, 2000, 1500, 500, 'Sports', NULL),
(07, 'Film Festival', '2024-09-30', '17:00:00', 07, 600, 450, 600, 'Movie', NULL),
(08, 'Dance Show', '2024-10-22', '20:30:00', 08, 1200, 900, 3000, 'Concert', NULL),
(09, 'Baseball Game', '2024-10-01', '14:00:00', 09, 5000, 3500, 3000, 'Sports', NULL),
(10, 'Music Gala', '2024-12-15', '21:00:00', 10, 700, 500, 3000, 'Concert', NULL);
INSERT INTO Customer (customer_id, customer_name, email, phone_number, booking_id) VALUES 
(01, 'Alice', 'alice@example.com', '1234567890', NULL),
(02, 'Bob', 'bob@example.com', '2345678901', NULL),
(03, 'Carol', 'carol@example.com', '3456789012', NULL),
(04, 'David', 'david@example.com', '4567890123', NULL),
(05, 'Davis', 'davis@example.com', '5678901234', NULL),
(06, 'Miller', 'miller@example.com', '6789012345', NULL),
(07, 'Wilson', 'wilson@example.com', '7890123456', NULL),
(08, 'Martinez', 'martinez@example.com', '8901234567', NULL),
(09, 'Ivy', 'ivy@example.com', '9012345678', NULL),
(10, 'Jack', 'jack@example.com', '0123456789', NULL);
INSERT INTO Booking (booking_id, customer_id, event_id, num_tickets, total_cost, booking_date) VALUES 
(1, 1, 1, 2, 199.98, '2024-09-01'),
(2, 2, 2, 4, 199.96, '2024-09-02'),
(3, 3, 3, 1, 19.99, '2024-09-03'),
(4, 4, 4, 3, 89.97, '2024-09-04'),
(5, 5, 5, 2, 399.98, '2024-09-05'),
(6, 6, 6, 5, 299.95, '2024-09-06'),
(7, 7, 7, 3, 119.97, '2024-09-07'),
(8, 8, 8, 2, 139.98, '2024-09-08'),
(9, 9, 9, 6, 479.94, '2024-09-09'),
(10, 10, 10, 1, 119.99, '2024-09-10');
SELECT * from venue;
SELECT * from event;
SELECT * from customer;
SELECT * from booking;

-- 2.write a SQL query to list all Events 
SELECT * from event;

-- 3.write a SQL query to select events with available tickets
SELECT * from event WHERE available_seats > 0;

-- 4.write a SQL query to select events name partial match with ‘cup’
SELECT * from event WHERE event_name LIKE '%cup%';

-- 5.write a SQL query to select events with ticket price range is between 1000 to 2500.
SELECT * from event WHERE ticket_price BETWEEN 1000 AND 2500;

-- 6.write a SQL query to retrieve events with dates falling within a specific range
SELECT * from event WHERE event_date BETWEEN '2024-09-03' AND '2024-09-07';

-- 7.write a SQL query to retrieve events with available tickets that also have "Concert" in their 
SELECT * from event WHERE available_seats > 0 AND event_type = 'Concert';

-- 8.write a SQL query to retrieve users in batches of 5, starting from the 6th user
SELECT * from customer  LIMIT 5 OFFSET 5;

-- 9.write a SQL query to retrieve bookings details contains booked no of ticket more than 4
SELECT * from booking WHERE num_tickets > 4;

-- 10.write a SQL query to retrieve customer information whose phone number end with ‘000’
SELECT * FROM customer WHERE phone_number LIKE '%000';

-- 11.write a SQL query to retrieve the events in order whose seat capacity more than 15000.
SELECT * from event WHERE total_seats > 15000; 

-- 12.write a SQL query to select events name not start with ‘x’, ‘y’, ‘z’  
SELECT * from event WHERE event_name NOT LIKE 'x%' AND event_name NOT LIKE 'y%' AND event_name NOT LIKE'%z';


-- task 3 -- 


-- 1.write a SQL query to List Events and Their average ticket prices
SELECT event_type, AVG(ticket_price) AS average_price 
FROM event GROUP BY event_type;

-- 2.write a SQL query to Calculate the Total Revenue Generated by Events
SELECT e.event_name, SUM(b.total_cost) AS total_revenue 
FROM booking b
JOIN event e ON b.event_id = e.event_id 
GROUP BY e.event_name;

-- 3.write a SQL query to find the event with the highest ticket sales
SELECT e.event_name, SUM(b.num_tickets) AS total_tickets_sold 
FROM booking b
JOIN event e ON b.event_id = e.event_id
GROUP BY e.event_name 
ORDER BY total_tickets_sold DESC 
LIMIT 1;

-- 4.Write a SQL query to Calculate the Total Number of Tickets Sold for Each Event
SELECT e.event_name, SUM(b.num_tickets) AS total_tickets_sold 
FROM booking b
JOIN event e ON b.event_id = e.event_id 
GROUP BY e.event_name;

-- 5.Write a SQL query to Find Events with No Ticket Sales
SELECT e.event_name
FROM event e
LEFT JOIN booking b ON e.event_id = b.event_id 
WHERE b.booking_id IS NULL; 

-- 6.Write a SQL query to Find the User Who Has Booked the Most Tickets
SELECT c.customer_name, SUM(b.num_tickets) AS total_tickets 
FROM booking b
JOIN customer c ON b.customer_id = c.customer_id 
GROUP BY c.customer_name 
ORDER BY total_tickets DESC 
LIMIT 1;

-- 7.write a SQL query to List Events and the total number of tickets sold for each month
SELECT e.event_name, MONTH(b.booking_date) AS month, SUM(b.num_tickets) AS total_tickets_sold
FROM booking b
JOIN event e ON b.event_id = e.event_id 
GROUP BY e.event_name,
MONTH(b.booking_date)
ORDER BY month;

-- 8.Write a SQL query to calculate the average Ticket Price for Events in Each Venue
SELECT v.venue_name, AVG(e.ticket_price) AS average_ticket_price 
FROM event e
JOIN venue v ON e.venue_id = v.venue_id
GROUP BY v.venue_name;

-- 9.Write a SQL query to calculate the total Number of Tickets Sold for Each Event Type
SELECT e.event_type, SUM(b.num_tickets) AS total_tickets_sold 
FROM booking b
JOIN event e ON b.event_id = e.event_id 
GROUP BY e.event_type;

-- 10.write a SQL query to calculate the total Revenue Generated by Events in Each Year
SELECT c.customer_name, SUM(b.total_cost) AS total_revenue 
FROM booking b
JOIN customer c ON b.customer_id = c.customer_id 
GROUP BY c.customer_name;

-- 11.Write a SQL query to list users who have booked tickets for multiple events. 
SELECT c.customer_name, COUNT(DISTINCT b.event_id) AS event_count 
FROM booking b
JOIN customer c ON b.customer_id = c.customer_id 
GROUP BY c.customer_name 
HAVING event_count > 1;

-- 12.Write a SQL query to calculate the Total Revenue Generated by Events for Each User
SELECT c.customer_name, SUM(b.total_cost) AS total_revenue 
FROM booking b
JOIN customer c ON b.customer_id = c.customer_id 
GROUP BY c.customer_name;

-- 13.write a SQL query to calculate the Average Ticket Price for Events in Each Category and Venue
SELECT e.event_type, v.venue_name, AVG(e.ticket_price) AS average_ticket_price 
FROM event e
JOIN venue v ON e.venue_id = v.venue_id 
GROUP BY e.event_type, v.venue_name;

-- 14.Write a SQL query to list Users and the Total Number of Tickets They've Purchased in the Last 30 days
SELECT c.customer_name, SUM(b.num_tickets) AS total_tickets 
FROM booking b 
JOIN customer c ON b.customer_id = c.customer_id 
WHERE b.booking_date >= CURDATE() - INTERVAL 30 DAY 
GROUP BY c.customer_name;

-- task 4 --


-- 1.calculate the average ticket price for events in each venue using a subquery
SELECT v.venue_name, (select AVG(e.ticket_price) 
FROM event e 
WHERE e.venue_id = v.venue_id) AS avg_ticket_price 
FROM venue v; 

-- 2.Find Events with More Than 50% of Tickets Sold using subquery
SELECT event_name 
FROM event e 
WHERE available_seats < (SELECT total_seats /2 FROM event WHERE event_id = e.event_id);

-- 3.Calculate the Total Number of Tickets Sold for Each Event
SELECT e.event_name,(SELECT SUM(b.num_tickets) 
FROM booking b
 WHERE b.event_id = e.event_id) AS total_tickets_sold 
FROM event e;

-- 4.Find Users Who Have Not Booked Any Tickets Using a NOT EXISTS Subquery
SELECT customer_name 
FROM customer c 
WHERE NOT EXISTS (SELECT 1 FROM booking b WHERE b.customer_id = c.customer_id);

-- 5.List Events with No Ticket Sales Using a NOT IN Subquery
SELECT event_name 
FROM event 
WHERE event_id NOT IN (SELECT distinct event_id FROM booking);

-- 6.Calculate the Total Number of Tickets Sold for Each Event Type Using a Subquery in the FROM clause
SELECT event_type, SUM(total_tickets) AS total_tickets_sold
FROM (SELECT e.event_type, b.num_tickets AS total_tickets
FROM booking b 
JOIN event e ON b.event_id = e.event_id) AS event_ticket_sales GROUP BY event_type;

-- 7.Find Events with Ticket Prices Higher Than the Average Ticket Price Using a Subquery in the where clause
SELECT event_name,ticket_price 
FROM event 
WHERE ticket_price>(SELECT AVG(ticket_price)FROM event);

-- 8.Calculate the Total Revenue Generated by Events for Each User Using a Correlated Subquery
SELECT c.customer_name, (SELECT SUM(b.total_cost) 
FROM booking b
WHERE b.customer_id = c.customer_id) AS total_revenue 
FROM customer c;

-- 9.List Users Who Have Booked Tickets for Events in a Given Venue Using a Subquery in the WHERE clause.
SELECT customer_name
FROM customer c
WHERE customer_id IN(SELECT b.customer_id FROM booking b JOIN event e ON b.event_id = e.event_id WHERE e.venue_id = (SELECT venue_id 
FROM venue
WHERE venue_name = 'Stadium A'));

-- 10.Calculate the Total Number of Tickets Sold for Each Event Category Using a Subquery with group by
SELECT event_type,(SELECT SUM(b.num_tickets) 
FROM booking b
JOIN event e2 ON b.event_id = e2.event_id WHERE e2.event_type = e.event_type) AS total_tickets_sold 
FROM event e
GROUP BY event_type;

-- 11.Find Users Who Have Booked Tickets for Events in each Month Using a Subquery with DATE_FORMAT 
SELECT c.customer_name,(SELECT COUNT(b.booking_id) 
FROM booking b 
WHERE b.customer_id = c.customer_id 
AND DATE_FORMAT(b.booking_date,'%Y-"m') = '2024-09') AS bookings_in_month 
FROM customer c;

-- 12. Calculate the Average Ticket Price for Events in Each Venue Using a Subquery
SELECT v.venue_name,(SELECT AVG(ticket_price) 
FROM event e 
WHERE e.venue_id = v.venue_id) AS avg_ticket_price 
FROM venue v;










