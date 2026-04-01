
# Day 5 Project: Public API Data Aggregator
# Goal:
# 1. Fetch posts
# 2. Fetch comments
# 3. Count comments per post
# 4. Create DataFrame
# 5. Save CSV

import requests
import pandas as pd

# Step 1: Fetch posts from API

posts_url = "https://jsonplaceholder.typicode.com/posts"
posts_response = requests.get(posts_url)

# Convert JSON to Python list
posts = posts_response.json()

# Step 2: Fetch comments from API

comments_url = "https://jsonplaceholder.typicode.com/comments"
comments_response = requests.get(comments_url)

comments = comments_response.json()


# Step 3: Convert to DataFrame

posts_df = pd.DataFrame(posts)
comments_df = pd.DataFrame(comments)


# Step 4: Count comments per post

comment_counts = comments_df.groupby("postId").size()

# Step 5: Add new column in posts dataframe

posts_df["comment_count"] = posts_df["id"].map(comment_counts)

# Fill NaN values with 0
posts_df["comment_count"] = posts_df["comment_count"].fillna(0)


# Step 6: Save to CSV

posts_df.to_csv("posts_with_comment_counts.csv", index=False)

print("✅ Project Completed!")
print("CSV file saved as posts_with_comment_counts.csv")
