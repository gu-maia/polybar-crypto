# frozen_string_literal: true

require 'httparty'
require_relative 'crypto-config'

begin
  response = HTTParty.get(@request_url, headers: @headers)
rescue StandardError
  print 'Failed request!'
  response = false
end

if response
  response['data'].each do |current_coin|
    icon = (@coins[current_coin[1]['slug'].to_sym]).to_s
    value = current_coin[1].dig('quote', @currency, 'price')&.round(2)
    print "#{icon} #{value} "
  end
end
