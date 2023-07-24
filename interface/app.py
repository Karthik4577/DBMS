import streamlit as st
from create import create
from database import create_table
from delete import delete
from read import read
from update import update
from query import query

def main():
    st.title("Airline Ticket Booking System")
    menu = ["Add", "View", "Edit", "Remove","Query"]
    choice = st.sidebar.selectbox("Menu", menu)
    create_table()
    if choice == "Add":
        st.subheader("Enter Flight Details:")
        create()

    elif choice == "View":
        st.subheader("View Flight Details")
        read()

    elif choice == "Edit":
        st.subheader("Update Flight Details")
        update()

    elif choice == "Remove":
        st.subheader("Delete Flight Details")
        delete()
    elif choice == "Query":
        st.subheader("Enter Query")
        query()

    # else:
    #     st.subheader("About tasks")
if __name__ == '__main__':
    main()
