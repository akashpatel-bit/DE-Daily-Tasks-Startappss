#to perform outer join on two dataframes to combine them
# Import pandas
import pandas as pd

# First dataframe - employee basic info
df1 = pd.DataFrame({
    "Employee_ID": [1, 2, 3],
    "Name": ["Rahul", "Amit", "Neha"]
})

# Second dataframe - employee salary info
df2 = pd.DataFrame({
    "Employee_ID": [2, 3, 4],
    "Salary": [50000, 60000, 55000]
})

# Perform outer join on Employee_ID
outer_join_df = pd.merge(df1, df2, on="Employee_ID", how="outer")

print("Outer Join Result:")
print(outer_join_df)
