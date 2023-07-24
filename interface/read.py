import pandas as pd
import streamlit as st
import plotly.express as px
from database import view_all_data

def read():
    data = view_all_data()
    data_df = pd.DataFrame(data,columns=['Source','Destination','Flight Code','Flight Type','Airline Id','Depart Date','Availability'])
    with st.expander("View all Flights"):
        st.dataframe(data_df)