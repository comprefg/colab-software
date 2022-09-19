
with open('/home/pablogod/backup/somefile.txt', 'r') as f:
    for line in f:
        pass
    last_line = line
print(last_line)
import requests
from requests.structures import CaseInsensitiveDict

url = "https://ptb.discord.com/api/webhooks/1012830182882685140/coAa8BUhkJJc9EHPAanJ2IECPG9Podh7H3J3cBZPF2_sRqQAOKH-HuKEKuqxr6rBInEC"

headers = CaseInsensitiveDict()
headers["Content-Type"] = "application/json"

data = '{"username": "test", "content": "'+last_line+'"}'


resp = requests.post(url, headers=headers, data=data.split("link=")[1])

print(resp.status_code)

print(data.split("link=")[1])
