from database import query_table,view_all_data
import streamlit as st
import pandas as pd

def query():
    q = st.text_input("Enter your query: ")
    if(st.button("run")):
          data = query_table(q)
          data_df = pd.DataFrame(data)
          with st.expander("View"):
            st.dataframe(data_df)