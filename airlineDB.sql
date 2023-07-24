CREATE TABLE Airline
(
  Airline_id VARCHAR(10) NOT NULL,
  Airline_Name VARCHAR(50),
  PRIMARY KEY (Airline_id)
);

CREATE TABLE Flight
(
  Source VARCHAR(25),
  Destination VARCHAR(25),
  Flight_Code VARCHAR(25) NOT NULL,
  Flight_Type VARCHAR(25),
  Depart_Date DATE,
  Airline_id VARCHAR(20) NOT NULL,
  Availability VARCHAR(3),
  PRIMARY KEY (Flight_Code),
  FOREIGN KEY (Airline_id) REFERENCES Airline(Airline_id)
);

CREATE TABLE Class 
(
  Class_Type VARCHAR(10),
  Fare int ,
  No_of_seats int,
  Flight_Code VARCHAR(25) NOT NULL,
  PRIMARY KEY(Flight_Code,Class_Type),
  FOREIGN KEY (Flight_Code) REFERENCES Flight(Flight_Code)
);

CREATE TABLE User
(
  Name VARCHAR(50),
  UserId INT NOT NULL,
  UserType VARCHAR(20),
  Email_ID VARCHAR(30),
  Password VARCHAR(30),
  PRIMARY KEY (UserId)
);

CREATE TABLE Ticket
(
  Ticket_No VARCHAR(20) NOT NULL,
  Class VARCHAR(15) NOT NULL,
  Date_of_Booking DATETIME,
  Departure_time DATETIME,
  Departure VARCHAR(25),
  Arrival VARCHAR(25),
  Arrival_time DATETIME,
  Flight_Code VARCHAR(25) NOT NULL,
  UserId INT NOT NULL,
  ticket_status varchar(10),
  PRIMARY KEY (Ticket_No),
  FOREIGN KEY (UserId) REFERENCES User(UserId),
  FOREIGN KEY (Flight_Code) REFERENCES Flight(Flight_Code)
);

CREATE TABLE Payment_Info
(
  transaction_id VARCHAR(20) NOT NULL,
  Price INT,
  Card_No VARCHAR(20),
  Bank VARCHAR(30),
  Ticket_No VARCHAR(20) NOT NULL,
  PRIMARY KEY (transaction_id),
  FOREIGN KEY (Ticket_No) REFERENCES Ticket(Ticket_No)
);

CREATE TABLE Passenger_Info
(
  PID VARCHAR(20) NOT NULL,
  Name VARCHAR(30),
  Age INT,
  PhoneNo VARCHAR(12),
  Pincode INT,
  StreetName VARCHAR(40),
  Ticket_No VARCHAR(20) NOT NULL,
  PRIMARY KEY (PID),
  FOREIGN KEY (Ticket_No) REFERENCES Ticket(Ticket_No)
);

CREATE TABLE Checks_for
(
  UserId INT NOT NULL,
  Flight_Code VARCHAR(25) NOT NULL,
  PRIMARY KEY (UserId, Flight_Code),
  FOREIGN KEY (UserId) REFERENCES User(UserId),
  FOREIGN KEY (Flight_Code) REFERENCES Flight(Flight_Code)
);