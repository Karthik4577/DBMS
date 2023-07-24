import pandas as pd
import streamlit as st
from database import view_all_data, view_only_flight_codes, delete_data


def delete():
    result = view_all_data()
    df = pd.DataFrame(result,columns=['Source','Destination','Flight Code','Flight Type','Airline Id','Depart Date','Availability'])
    with st.expander('Current Data'):
        st.dataframe(df)
    list_of_flight_codes = [i[0] for i in view_only_flight_codes()]
    selected_flight = st.selectbox("Task to Delete", list_of_flight_codes)
    st.warning("Do you want to delete ::{}".format(selected_flight))
    if st.button("Delete Flight"):
        delete_data(selected_flight)
        st.success("Flight has been deleted successfully")
    new_result = view_all_data()
    df2 = pd.DataFrame(new_result,columns=['Source','Destination','Flight Code','Flight Type','Airline Id','Depart Date','Availability'])
    with st.expander('Current Data'):
        st.dataframe(df2)