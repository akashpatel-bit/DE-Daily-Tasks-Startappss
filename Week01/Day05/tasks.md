# Day 5 - Weekly Project 1

## Project: Public API Data Aggregator

### Objective

Fetch data from a public API, process it using Pandas, and save the final dataset to CSV.

---

## Tasks

### Task 1: Fetch Posts

* Use Python `requests` library
* Call a public API endpoint for posts
* Store response in JSON format

---

### Task 2: Fetch Comments

* Call API endpoint for comments
* Store comments data in JSON format

---

### Task 3: Create DataFrames

* Convert posts JSON to Pandas DataFrame
* Convert comments JSON to Pandas DataFrame

---

### Task 4: Count Comments per Post

* Use `groupby()` on comments DataFrame
* Count number of comments for each post

---

### Task 5: Merge Data

* Add a new column in posts DataFrame
* Column name: `comment_count`
* Map comment counts using post ID

---

### Task 6: Handle Missing Values

* Replace NaN values with 0

---

### Task 7: Save Final Output

* Save DataFrame to CSV file
* File name: `posts_with_comment_counts.csv`

---

## Expected Output

* CSV file with posts and comment counts
* Columns:

  * userId
  * id
  * title
  * body
  * comment_count

---

## Concepts Used

* API requests
* JSON handling
* Pandas DataFrame
* groupby()
* Data mapping
* CSV export

---

## Completion Criteria

* Script runs without errors
* CSV file generated successfully
* Comment counts correctly added

