# Stock Trading App

A Ruby on Rails application where registered users can buy and sell stocks.

## Dependencies

```ruby
ruby "3.2.0"
gem 'pg'
gem 'devise'
gem 'iex-ruby-client'
gem 'rest-client'
```

## Functionalities

  ### Admin Functions:
  - creates a new user(trader), and manually add them to the app
  - views and edits user credentials
  - approves trader sign-ups
  - monitors transaction flow of traders
  - sends email upon registration of traders, and upon update of status from 'pending' to 'approved'
  ### Trader Functions:
  - creates own trader account
  - creates own portfolio that contains the stocks they own
  - tops up balance
  - buys and sells stocks
  - monitors own transaction history

## Notes
- Please check seed file for login credentials.
- IEX account expires after a certain period of time. 
