import json
import requests

print('Please enter your zip code: ')
zip = input()

r = requests.get('https://api.openweathermap.org/data/2.5/weather?zip=%s,us&appid=48ee02d8f197500dbdcafb62a762b27a' % zip)

data=r.json()

print(data['weather'][0])
