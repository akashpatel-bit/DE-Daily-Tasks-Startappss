
import requests

url = "https://api.github.com/users/akashpatel-bit/repos"

# parameters dictionary
params = {
    "per_page": 3   }


# GET request with parameters
response = requests.get(url, params=params)

# check request successful or not
if response.status_code == 200:

    # JSON to list/dict
    data = response.json()

    for repo in data:

        print(repo["name"])

else:
    # if error occurs
    print("Error:", response.status_code)
