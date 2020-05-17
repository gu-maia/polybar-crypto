require 'httparty'
require_relative 'crypto-config'

response = HTTParty.get(@request_url, :headers => @headers)

response["data"].each do |current_coin|
  icon = "#{@coins[current_coin[1]["slug"].to_sym]}"
  value = current_coin[1].dig('quote', @currency, 'price')&.round(2)
  print "#{icon} #{value} "
end
