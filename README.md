# BandsInTownApiClient

This gem provides a light weight wrapper for the Bands In Town event API. Currently it allows you to get all events for a particular band with ease. Later it will allow for all other Bands In Town requests such as band info and event searching.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bands_in_town_api_client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bands_in_town_api_client

## Usage

Currently this gem will only get events for a particular artist

```ruby
require 'bands_in_town_api_client'
events = BandsInTownApiClient::Client.new("Skrillex", "YOUR_CLIENT_ID").events
```
YOUR_CLIENT_ID can be any unique identifier of your choosing. No registration is required.

Please enjoy!

## TODO

1. Add implantation for other API requests such as band info and event search

## Contributing

1. Fork it ( https://github.com/[my-github-username]/bands_in_town_api_client/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
