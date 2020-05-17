@coins = [[coin: "bitcoin", icon: ""], [coin: "dash", icon: ""]]
@currency = 'USD'
@api_key = ''

@request_url = "https://pro-api.coinmarketcap.com/v1/cryptocurrency/quotes/latest?slug=#{@coins.map { |a| [a.first.first[1]] }.join(",")}"

@headers = {
   "Accepts"  => "application/json",
   "X-CMC_PRO_API_KEY" => @api_key
}

