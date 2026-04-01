# Fetch data from public API and print it

#imports request to call API
import requests

url = "https://api.github.com/users/akashpatel-bit/repos"

#send request to access data from server
response = requests.get(url)

#convert json into list/dict
data = response.json()

for user in data:
    print(user["name"])
