import requests

url = "https://priceline-com-provider.p.rapidapi.com/v2/flight/roundTrip"

querystring = {"sid":"iSiX639","adults":"1","departure_date":"2021-12-21,2021-12-25","destination_airport_code":"JFK,YWG","origin_airport_code":"YWG,JFK"}

headers = {
	"X-RapidAPI-Key": "eba6afb8e7mshbe13dd9c9f98081p1dc115jsn4f125e642b38",
	"X-RapidAPI-Host": "priceline-com-provider.p.rapidapi.com"
}

response = requests.request("GET", url, headers=headers, params=querystring)

print(response.text)
