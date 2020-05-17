require 'httparty'
require 'json'

coins = ["bitcoin"]
request_url = "https://pro-api.coinmarketcap.com/v1/cryptocurrency/quotes/latest?slug=#{coins.join(",")}"
api_key = ''

headers = { 
    "Accepts"  => "application/json",
    "X-CMC_PRO_API_KEY" => api_key
  }

response = HTTParty.get(request_url, :headers => headers).parsed_response

print response["data"]["1"]["quote"]["USD"]["price"].round(2)