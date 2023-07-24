--Airlines
insert into airline values ('6E','Indigo'),('AA','American Airlines'),('AI','Air India'),('EK','Emirates'),('EY','Etihad Airways'),('QR','Qatar Airways');

--Flight
insert into flight values ('Bengaluru','Mumbai','6E1','Nonstop','2021-03-17','6E','yes');
insert into flight values ('Mumbai','New York','AA1','Connecting','2021-03-16','AA','yes');
insert into flight values ('Bengaluru','Hyderabad','AI1','Nonstop','2021-03-17','AI','yes');
insert into flight values ('Delhi','London','EK1','Nonstop','2021-04-21','EK','yes');
insert into flight values ('Bengaluru','Dubai','EK2','Nonstop','2021-03-19','EK','yes');
insert into flight values ('Hyderabad','Sydney','EK3','Connecting','2021-03-24','EK','yes');
insert into flight values ('Kolkata','Chennai','EY1','Nonstop','2021-04-25','EY','yes');
insert into flight values ('Hyderabad','Qatar','QR1','Nonstop','2021-04-19','QR','yes');
insert into flight values ('Bengaluru','Mumbai','AI2','Nonstop','2021-03-17','AI','yes');
insert into flight values ('Mumbai','New York','EK4','Connecting','2021-03-16','EK','yes');
insert into flight values ('Bengaluru','Hyderabad','QR2','Nonstop','2021-03-17','QR','yes');
insert into flight values ('Delhi','London','AI3','Nonstop','2021-04-21','AI','yes');
insert into flight values ('Bengaluru','Dubai','EY2','Nonstop','2021-03-19','EY','yes');
insert into flight values ('Hyderabad','Tokyo','EK5','Nonstop','2021-04-25','EK','yes');

--CLASS
insert into class values ('ECONOMY',3000,250,'6E1');
insert into class values ('BUSSINESS',7000,100,'6E1');
insert into class values ('ECONOMY',25000,350,'EK2');
insert into class values ('BUSSINESS',50000,100,'EK2');
insert into class values ('ECONOMY',100000,300,'EK1');
insert into class values ('BUSSINESS',300000,150,'EK1');
insert into class values ('ECONOMY',200000,400,'AA1');
insert into class values ('BUSSINESS',500000,150,'AA1');
insert into class values ('ECONOMY',2500,300,'AI1');
insert into class values ('BUSSINESS',7000,100,'AI1');
insert into class values ('ECONOMY',200000,300,'EK3');
insert into class values ('FIRST',400000,50,'EK3');
insert into class values ('BUSSINESS',300000,50,'EK3');
insert into class values ('ECONOMY',80000,300,'EK5');
insert into class values ('FIRST',250000,50,'EK5');
insert into class values ('BUSSINESS',150000,50,'EK5');



--User
insert into user values ('ram',1221,'ADMN','ram@gmail.com','ram@123');
insert into user values ('raju',1231,'NADMN','raju@gmail.com','raju@123');
insert into user values ('musk',1241,'ADMN','musk@gmail.com','musk@123');
insert into user values ('jeff',1251,'NADMN','jeff@gmail.com','jeff@123');
insert into user values ('bill',1261,'NADMN','bill@gmail.com','bill@123');

--Ticket
insert into Ticket values ('DUB123','Economy','2021-03-10','2022-03-19 13:00:00','Bengaluru','Dubai','2021-03-19 19:00:00','EK2',1221,'CONFIRMED');
insert into Ticket values ('DUB124','Economy','2021-03-10','2021-03-19 13:00:00','Bengaluru','Dubai','2021-03-19 19:00:00','EK2',1221,'CONFIRMED');
insert into Ticket values ('DUB125','Economy','2021-03-10','2021-03-19 13:00:00','Bengaluru','Dubai','2021-03-19 19:00:00','EK2',1221,'CONFIRMED');
insert into Ticket values ('LON123','Bussiness','2021-04-11','2021-04-21 4:00:00','Delhi','London','2021-04-21 12:00:00','EK1',1261,'CONFIRMED');
insert into Ticket values ('LON124','Bussiness','2021-04-11','2021-04-21 4:00:00','Delhi','London','2021-04-21 12:00:00','EK1',1261,'CONFIRMED');
insert into Ticket values ('NYC123','Bussiness','2021-03-06','2021-03-16 5:00:00','Mumbai','New York','2021-03-16 18:00:00','AA1',1241,'CONFIRMED');
insert into Ticket values ('NYC124','Bussiness','2021-03-06','2021-03-16 5:00:00','Mumbai','New York','2021-03-16 18:00:00','AA1',1241,'CONFIRMED');
insert into Ticket values ('MUM123','Economy','2021-03-07','2021-03-17 14:00:00','Bengaluru','Mumbai','2021-03-17 16:30:00','6E1',1231,'CONFIRMED');
insert into Ticket values ('MUM125','Economy','2021-03-07','2021-03-17 13:00:00','Bengaluru','Mumbai','2021-03-19 19:00:00','6E1',1221,'CONFIRMED');
insert into Ticket values ('HYD123','Economy','2021-03-07','2021-03-17 15:00:00','Bengaluru','Hyderabad','2021-03-17 16:30:00','AI1',1221,'CONFIRMED');
insert into Ticket values ('SYD123','First','2021-03-14','2021-03-24 2:00:00','Hyderabad','Sydney','2021-03-24 18:30:00','EK3',1251,'CONFIRMED');
insert into Ticket values ('SYD124','First','2021-03-14','2021-03-24 2:00:00','Hyderabad','Sydney','2021-03-24 18:30:00','EK3',1221,'CONFIRMED');
insert into Ticket values ('TOK123','First','2021-04-15','2021-04-25 2:00:00','Hyderabad','Tokyo','2021-03-24 18:30:00','EK5',1251,'PENDING');
insert into Ticket values ('TOK124','First','2021-04-15','2021-04-25 2:00:00','Hyderabad','Tokyo','2021-03-24 18:30:00','EK5',1251,'PENDING');
--Payment_info
insert into payment_info values ('TDUB12345',25000,'1234 5927 0890 1234','State Bank of India','DUB123');
insert into payment_info values ('TDUB12345',25000,'1234 5927 0890 1234','State Bank of India','DUB124');
insert into payment_info values ('TDUB12345',25000,'1234 5927 0890 1234','State Bank of India','DUB125');
insert into payment_info values ('TLON12346',300000,'1238 5926 0834 1212','Bank of America','LON123');
insert into payment_info values ('TLON12346',300000,'1238 5926 0834 1212','Bank of America','LON124');
insert into payment_info values ('TNYC12347',500000,'3834 2627 3890 1226','HDFC Bank','NYC123');
insert into payment_info values ('TNYC12347',500000,'3834 2627 3890 1226','HDFC Bank','NYC124');
insert into payment_info values ('TMUM12341',3000,'3424 9697 1290 1208','Union Bank of India','MUM123');
insert into payment_info values ('TDMU12432',3000,'1234 5927 0890 1234','State Bank of Inida','MUM125');
insert into payment_info values ('THYD12342',2500,'3426 9662 1990 3908','State Bank of India','HYD123');
insert into payment_info values ('TSYD12343',400000,'3419 9292 1030 9457','HDFC Bank','SYD123');
insert into payment_info values ('TSYD12432',350000,'1234 5927 0890 1234','State Bank of Inida','SYD124');
insert into payment_info values ('TTOK12391',250000,'3419 9292 1030 9457','HDFC Bank','TOK123');
insert into payment_info values ('TTOK12392',250000,'1234 5927 0890 1234','State Bank of Inida','TOK124');


--Passenger_info
insert into passenger_info values ('PIDDUB345','rohit',29,'9829392892',423456,'xyz street','DUB123');
insert into passenger_info values ('PIDDUB013','virat',28,'9649348242',423456,'xza street','DUB124');
insert into passenger_info values ('PIDLON301','buttler',27,'4847392892',130326,'abc street','LON123');
insert into passenger_info values ('PIDLON014','joe',30,'4883348247',140156,'bsc street','LON124');
insert into passenger_info values ('PIDNYC901','jordan',34,'4434448247',113456,'asf street','NYC123');
insert into passenger_info values ('PIDNYC932','ross',32,'4422499955',113446,'sac street','NYC124');
insert into passenger_info values ('PIDMUM001','mahi',34,'9304400955',290446,'mac street','MUM123');
insert into passenger_info values ('PIDMUM110','rocky',32,'9304447275',29043,'cag street','MUM125');
insert into passenger_info values ('PIDHYD451','ram',32,'9000499955',500446,'sap street','HYD123');
insert into passenger_info values ('PIDSYD451','ricky',32,'1030994955',100446,'dak street','SYD123');
insert into passenger_info values ('PIDSYD461','michael',32,'1030994955',100446,'mat street','SYD124');
--CHECKS FOR
insert into checks_for values (1221,'EK2');
insert into checks_for values (1221,'EY2');
insert into checks_for values (1221,'EK3');
insert into checks_for values (1261,'EK1');
insert into checks_for values (1261,'AI3');
insert into checks_for values (1241,'AA1');
insert into checks_for values (1241,'EK4');
insert into checks_for values (1231,'6E1');
insert into checks_for values (1231,'AI2');
insert into checks_for values (1221,'QR2');
insert into checks_for values (1251,'EK3');



INSERT INTO airline (airline_id, airline_name) 
VALUES 
  ('AC', 'Air Canada'),
  ('AF', 'Air France'),
  ('BA', 'British Airways'),
  ('CA', 'Air China'),
  ('DL', 'Delta Air Lines'),
  ('F9', 'Frontier Airlines'),
  ('G3', 'Gol Transportes Aéreos'),
  ('JL', 'Japan Airlines'),
  ('KL', 'KLM Royal Dutch Airlines'),
  ('LH', 'Lufthansa'),
  ('NH', 'All Nippon Airways'),
  ('NZ', 'Air New Zealand'),
  ('OS', 'Austrian Airlines'),
  ('PR', 'Philippine Airlines'),
  ('QF', 'Qantas'),
  ('SQ', 'Singapore Airlines'),
  ('TK', 'Turkish Airlines'),
  ('UA', 'United Airlines'),
  ('VS', 'Virgin Atlantic'),
  ('WN', 'Southwest Airlines'),
  ('WS', 'WestJet');

  INSERT INTO airline (airline_id, airline_name) 
VALUES 
  ('A3', 'Aegean Airlines'),
  ('AM', 'Aeroméxico'),
  ('AS', 'Alaska Airlines'),
  ('AV', 'Avianca'),
  ('AY', 'Finnair'),
  ('B6', 'JetBlue Airways'),
  ('BE', 'Flybe'),
  ('CZ', 'China Southern Airlines'),
  ('DY', 'Norwegian Air Shuttle');




VALUES 
  ('ECONOMY', 6000, 200, 'QR3'),
  ('BUSSINESS', 14000, 75, 'QR3'),
  ('ECONOMY', 18000, 250, 'QR4'),
  ('BUSSINESS', 42000, 75, 'QR4'),
  ('ECONOMY', 8000, 200, 'EY3'),
  ('BUSSINESS', 20000, 75, 'EY3'),
  ('ECONOMY', 22000, 250, 'EY4'),
  ('BUSSINESS', 50000, 75, 'EY4'),
  ('ECONOMY', 12000, 200, '6E3'),
  ('BUSSINESS', 30000, 75, '6E3'),
  ('ECONOMY', 5000, 200, 'AA4'),
  ('BUSSINESS', 10000, 75, 'AA4'),
  ('ECONOMY', 15000, 250, 'AI4'),
  ('BUSSINESS', 35000, 75, 'AI4'),
  ('ECONOMY', 5000, 200, 'EK8'),
  ('BUSSINESS', 12000, 75, 'EK8'),
  ('FIRST', 50000, 25, 'EK8'),
  ('ECONOMY', 4000, 200, 'QR5'),
  ('BUSSINESS', 9000, 75, 'QR5'),
  ('ECONOMY', 12000, 250, 'QR6'),
  ('BUSSINESS', 28000, 75, 'QR6'),
  ('ECONOMY', 6000, 200, 'EY5'),
  ('BUSSINESS', 15000, 75, 'EY5'),
  ('ECONOMY', 18000, 250, 'EY6');