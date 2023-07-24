import streamlit as st
from database import add_data


def create():
    col1, col2 = st.columns(2)
    with col1:
        Flight_Code = st.text_input("Flight Code:")
        Airline_Id = st.selectbox("Airline Id:",["6E","AA","AI","EK","EY","QR"])
        Flight_Type = st.selectbox("Flight Type:", ["Connecting", "Nonstop"])
    with col2:
        Source = st.text_input("Source:")
        Destination = st.text_input("Destination:")
        Depart_Date = st.date_input("Depart Date: ")
        Availability = st.radio("Availability: ",('Yes','No'))
       
    
    if st.button("Add Flight"):
        add_data(Source,Destination,Flight_Code,Flight_Type,Airline_Id,Depart_Date,Availability)
        st.success("Successfully added Flight: {}".format(Flight_Code))
