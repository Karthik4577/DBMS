import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    database="airline_db"
)
c = mydb.cursor()


def create_table():
    c.execute('CREATE TABLE IF NOT EXISTS Flight(Source VARCHAR(25),Destination VARCHAR(25),Flight_Code VARCHAR(25) NOT NULL,Flight_Type VARCHAR(25),Depart_Date DATE,Airline_id VARCHAR(20) NOT NULL,PRIMARY KEY (Flight_Code),FOREIGN KEY (Airline_id) REFERENCES Airline(Airline_id))')
    mydb.commit()


def add_data(Source,Destination,Flight_Code,Flight_Type,Airline_Id,Depart_Date,Availability):
    c.execute("INSERT INTO FLIGHT(Source,Destination,Flight_Code,Flight_Type,Airline_Id,Depart_Date,Availability) VALUES(%s,%s,%s,%s,%s,%s,%s);",(Source,Destination,Flight_Code,Flight_Type,Airline_Id,Depart_Date,Availability))
    mydb.commit()

def view_all_data():
    c.execute('SELECT *From Flight; ')
    data = c.fetchall()
    return data
def view_only_flight_codes():
    c.execute('SELECT Flight_Code FROM Flight;')
    data = c.fetchall()
    return data 
def get_flight(selected_flight): 
    c.execute('SELECT * FROM Flight WHERE Flight_Code="{}";'.format(selected_flight)) 
    data = c.fetchall()
    return  data
def edit_flight_data(Source,Destination,Flight_Code,Flight_Type,Airline_Id,Depart_Date,Availability):
    c.execute('UPDATE flight SET source=%s,destination=%s,flight_code=%s,flight_type=%s,airline_id=%s,depart_date=%s,availability=%s WHERE flight_code = %s;',(Source,Destination,Flight_Code,Flight_Type,Airline_Id,Depart_Date,Availability,Flight_Code))
    mydb.commit()
def delete_data(selected_flight):
    c.execute('DELETE FROM flight WHERE flight_code="{}"'.format(selected_flight))
    mydb.commit()

def query_table(statement):
    c.execute('{}'.format(statement))
    data = c.fetchall()
    return data