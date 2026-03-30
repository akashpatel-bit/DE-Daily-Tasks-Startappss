# Day 4 - Working with APIs (Tasks)

## Objective

Learn how to interact with APIs using Python `requests` library, handle JSON responses, pass parameters, and manage rate limiting.

---

## Task 1: Basic GET Request

* Use a public API
* Fetch data using GET request
* Print first 5 records
* 
Use: https://jsonplaceholder.typicode.com/posts

---

## Task 2: GET Request with Parameters

* Use GitHub API
* Fetch repositories of your GitHub account
* Limit results using `per_page` parameter
* Print repository names

**Example parameter:**
`per_page = 3`

---

## Task 3: JSON Handling

* Fetch users from API
* Print:

  * Name
  * Email
  * Company name

**Hint:**
https://jsonplaceholder.typicode.com/users

---

## Task 4: POST Request

* Send data to API
* Create a new post
* Print response JSON

**Hint:**
Use POST on:
https://jsonplaceholder.typicode.com/posts

---

## Task 5: API Authentication (Conceptual)

* Write code showing API key usage
* Use headers dictionary
* No real key needed (dummy acceptable)

---

## Task 6: Rate Limiting Handling

* Send multiple requests in loop
* Handle `429` status code
* Use `time.sleep()` to retry

---

