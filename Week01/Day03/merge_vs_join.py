# merge() vs join() in pandas
# merge() -> joins using common column ,more like sql join, mostly used
# join()  -> joins using index , simple syntax, less used

import pandas as pd

df1 = pd.DataFrame({
    "ID": [1, 2, 3],
    "Name": ["Rahul", "Amit", "Neha"]
})

df2 = pd.DataFrame({
    "ID": [1, 2, 4],
    "Salary": [50000, 60000, 45000]
})

# using merge (column based)
merge_result = pd.merge(df1, df2, on="ID", how="outer")
print("Merge Result:")
print(merge_result)

# using join (index based)
join_result = df1.set_index("ID").join(df2.set_index("ID"), how="outer")
print("\nJoin Result:")
print(join_result)
