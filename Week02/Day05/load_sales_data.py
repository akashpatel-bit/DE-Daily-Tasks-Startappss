# Import required libraries
import pandas as pd
import sqlite3

# Load dataset directly from working URL
url = "https://raw.githubusercontent.com/mwaskom/seaborn-data/master/flights.csv"

df = pd.read_csv(url)

# Rename columns to match our project
df.rename(columns={
    'year': 'Year',
    'month': 'Month',
    'passengers': 'Sales'
}, inplace=True)

# Create fake customer names (for project purpose)
df['Customer Name'] = ['Customer_' + str(i%10) for i in range(len(df))]

# Create order date
df['Order Date'] = pd.to_datetime(df['Year'].astype(str) + '-' + df['Month'])

# Keep only required columns
df = df[['Order Date','Customer Name','Sales']]

# Create SQLite database connection
conn = sqlite3.connect("sales.db")

# Load dataframe into SQLite table
df.to_sql("sales_data", conn, if_exists="replace", index=False)

print("Data loaded successfully into SQLite database")

conn.close()