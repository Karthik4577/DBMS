import streamlit as st 
import pandas as pd
from database import view_all_data
from database import  view_only_flight_codes
from database import get_flight
from database import edit_flight_data

def update():
    list_of_flight = [i[0] for i in view_only_flight_codes()]
    print(list_of_flight)
    selected_flight = st.selectbox("Flight to Edit", list_of_flight)
    selected_flight = get_flight(selected_flight)
    if selected_flight:
        source = selected_flight[0][0]
        destination = selected_flight[0][1]
        flight_code = selected_flight[0][2]
        flight_type = selected_flight[0][3]
        airline_id = selected_flight[0][4]
        depart_date = selected_flight[0][5]
        availability = selected_flight[0][5]

        col1, col2 = st.columns(2)
        with col1:
            new_Flight_Code = st.text_input("Flight Code:")
            new_Airline_Id = st.selectbox("Airline Id:",["6E","AA","AI","EK","EY","QR"])
            new_Flight_Type = st.selectbox("Flight Type:", ["Connecting", "Nonstop"])
        with col2:
            new_Source = st.text_input("Source:")
            new_Destination = st.text_input("Destination:")
            new_Depart_Date = st.date_input("Depart Date: ")
            new_Availability = st.radio("Availability: ",('Yes','No'))
            
        if st.button("Update Dealer"):
            edit_flight_data(new_Source, new_Destination,new_Flight_Code, new_Flight_Type, new_Airline_Id,new_Depart_Date,new_Availability)
            st.success("Successfully updated:: {} to ::{}".format(flight_code, new_Flight_Code))
   
