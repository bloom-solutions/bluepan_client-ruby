# BluepanClient

[![Build Status](https://travis-ci.org/imacchiato/bluepan_client-ruby.svg?branch=master)](https://travis-ci.org/imacchiato/bluepan_client-ruby)

Ruby wrapper for Bluepan API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bluepan_client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bluepan_client

## Usage

See `spec/acceptance` for examples.

## Development

- Copy `spec/config.yml.sample` to `spec/config.yml` and fill in with your test credentials. NOTE: there is no staging server, so the gem connects to the production server. Tests will write into your production data. We have taken and taking steps to write things that are inconsequential (i.e. do not use up your credit).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/imacchiato/bluepan_client-ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

