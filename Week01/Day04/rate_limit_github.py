#to handle rate limiting
import requests

# time library for waiting purpose
import time

url = "https://api.github.com/users/akashpatel-bit/repos"

# for multiple requests
for i in range(10):

    response = requests.get(url)

    # if limit goes max
    if response.status_code == 429:

        print("Rate limit reached. Waiting before retry...")

        # for wait
        time.sleep(5)

        # resend request
        response = requests.get(url)

    # if request gets successfull
    if response.status_code == 200:

        data = response.json()

        print(f"Request {i+1} successful, repos count:", len(data))

    else:
        print("Error:", response.status_code)
