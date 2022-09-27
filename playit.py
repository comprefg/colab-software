
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

data = '{"username": "test", "content": "'+last_line.split("link=")[1][:-1]+'"}'


resp = requests.post(url, headers=headers, data=data)

print(resp.status_code)

print(data)
print(last_line)
#####part 2
import os
os.system("pip3 install selenium")
os.system("sudo wget https://chromedriver.storage.googleapis.com/106.0.5249.21/chromedriver_linux64.zip")
os.system("sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb")
os.system("sudo apt install unzip")
os.system("sudo pabloesgod")
os.system("sudo unzip chromedriver_linux64.zip")
os.system("sudo dpkg -i google-chrome-stable_current_amd64.deb")
os.system("sudo pip3 install webdriver_manager")
os.system("sudo pip3 install webdriver-manager")
os.system("sudo pip3 install --upgrade requests")


from webdriver_manager.chrome import ChromeDriverManager
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
import time


options = webdriver.ChromeOptions()
options.add_argument('--headless')
options.add_argument('--no-sandbox')
options.add_argument('--disable-dev-shm-usage')

#service = webdriver.Chrome(options=options,executable_path=ChromeDriverManager().install())
#driver = webdriver.Chrome(options=options,service=service)
def fill(what,where):
    driver.find_element(By.NAME, where).send_keys(what)
    pass

driver = webdriver.Chrome(options=options,service=Service(ChromeDriverManager().install()))
driver.get(last_line.split("link=")[1][:-1])
fill("myirlnameisnotsam@gmail.com","email")
fill("12345678","password")
driver.execute_script('document.getElementsByClassName("rJHtO")[0].getElementsByTagName("input")[2].click()')
time.sleep(5)
driver.execute_script('document.getElementsByTagName("button")[0].click()')
time.sleep(10)

data = '{"username": "test", "content": "in"}'
driver.get(last_line.split("http://localhost:8080"))


resp = requests.post(url, headers=headers, data=data)
