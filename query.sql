--Regular joins
  --Getting all the users who has booked tickets for price more than 25000
select  Name, Class, Arrival, Departure,price from ticket natural join payment_info natural join user where price> 25000;
  --Getting all the airline names of flights going from Bengaluru to Mumbai or Hyderabad
select Airline_Name,Source,Destination from airline natural join flight where source ='Bengaluru' and destination in ('Mumbai','Hyderabad');
--co-related queries
--nested queries
--getting username who booked tickets with departure as Hyderabad
select name from user where userid in (select userid from ticket where departure = "Bengaluru")
SELECT last_name, salary, department_id
 FROM employees outer
 WHERE salary >
                (SELECT AVG(salary)
                 FROM employees
                 WHERE department_id =
                        outer.department_id);

--Aggregate 

--select count(*),class from ticket natural join payment_info group by class;
 --getting count of all the tickets booked for the different flights
select count(*),arrival,departure from ticket natural join payment_info group by arrival,departure;
 --getting min,max,avg prices of tickets for each flight
select min(Price) as min,max(Price) as max,avg(price) as avg ,arrival,departure,class from ticket natural join payment_info group by
arrival,departure,class;
 --getting count of flights having same source and destination having count>=2
select source,destination,count(*) from flight  group by source,destination having count(*)>=2;

select 


--set operations
--getting users who booked tickets from Bengaluru to dubai or Bengaluru to Mumbai

select name from user natural join ticket where departure='Bengaluru' and arrival='Dubai' union  select name from user natural join ticket where departure='Bengaluru' and arrival='Mumbai';
select name from user natural join ticket where departure='Bengaluru' and arrival='Dubai' intersect  select name from user natural join ticket where departure='Bengaluru' and arrival='Mumbai';

--view
create view view3 as select name,departure,arrival,ticket_no from passenger_info natural join ticket group by ticket_no;
--functions

DELIMITER $$
CREATE TRIGGER `update_ticket_after_payment` AFTER INSERT ON `payment_info`
 FOR EACH ROW UPDATE ticket
     SET ticket_status='CONFIRMED'
   WHERE ticket_no = NEW.ticket_no
DELIMITER ;


DELIMITER $$
CREATE TRIGGER class_limit 
BEFORE INSERT 
ON class FOR EACH ROW  
BEGIN  
    DECLARE err VARCHAR(100);  
    DECLARE count int;
    SET err = ('Total number of classes should not exceed more than 3');  
    IF (select count(*) from class where Flight_Code = new.Flight_Code) >= 3 THEN  
    SIGNAL SQLSTATE '45000'   
    SET MESSAGE_TEXT = err;  
    END IF;  
END $$   
DELIMITER ;

DELIMITER $$
CREATE FUNCTION ticket_counter(count int)
RETURNS VARCHAR(50)
BEGIN
DECLARE message varchar(50);
IF count>=5 then
set message="Cannot purchase tickets Current limit is over";
ELSE
set message ="Can Purchase a ticket";
end if;
return message;
END;$$
DELIMITER;

select userid,ticket_counter(count(userid)) from ticket group by userid;


SELECT u.name
FROM user u
WHERE u.userid in(
SELECT t.userid
FROM ticket t WHERE t.departure='Mumbai'and t.arrival='New York');



