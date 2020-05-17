This should be roughly what was done [here](https://github.com/willHol/polybar-crypto), but written in ruby.

![working sample](https://i.imgur.com/YdsBVVc.png)

first, in your polybar folder
```bash
  $ git clone https://github.com/itsmaia/polybar-cripto && cd polybar-cripto
  $ mkdir ~/.config/polybar/crypto && cp ./{crypto-config.rb,main.rb} ~/.config/polybar/crypt
```
Then, put your API key and desired coins at ```crypto-config.rb```

```ruby
@coins = { :bitcoin => "bitcoin_icon", :dash => "dash_icon" }
@currency = 'USD'
@api_key = 'YOUR KEY HERE'
```
In your polybar config file:
```
...
modules-right = crypto memory cpu temperature date
...
[module/crypto]
type = custom/script
interval = 600
exec = ruby ~/.config/polybar/crypto/main.rb
```

[@willHol](https://github.com/willHol) used the [cryptocoins](https://github.com/allienworks/cryptocoins) font in his project and i think its pretty neat, you can take a look at that if you want to.


This is licensed under do whatever you want with it.