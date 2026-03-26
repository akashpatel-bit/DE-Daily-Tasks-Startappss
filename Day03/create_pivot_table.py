#create a pivot table to summarise sales by region and product category
import pandas as pd

# Sample sales data
data = {
    "Region": ["North", "North", "South", "South", "East"],
    "Category": ["Electronics", "Furniture", "Electronics", "Furniture", "Electronics"],
    "Sales": [200, 150, 300, 250, 400]
}

df = pd.DataFrame(data)

# Create pivot table
pivot = pd.pivot_table(
    df,
    values="Sales",        # values to summarize
    index="Region",        # rows
    columns="Category",    # columns
    aggfunc="sum"          # aggregation function
)

print(pivot)