@coins = { :bitcoin => "bitcoin_icon", :dash => "dash_icon" }
@currency = 'USD'
@api_key = '80951962-2e65-43e6-a9bc-ff3b9cc11196'

@request_url = "https://pro-api.coinmarketcap.com/v1/cryptocurrency/quotes/latest?slug=#{@coins.keys.join(",")}"

@headers = {
   "Accepts"  => "application/json",
   "X-CMC_PRO_API_KEY" => @api_key
}
