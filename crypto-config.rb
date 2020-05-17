@coins = { :bitcoin => "bitcoin_icon", :dash => "dash_icon" }
@currency = 'USD'
@api_key = ''

@request_url = "https://pro-api.coinmarketcap.com/v1/cryptocurrency/quotes/latest?slug=#{@coins.keys.join(",")}"

@headers = {
   "Accepts"  => "application/json",
   "X-CMC_PRO_API_KEY" => @api_key
}
