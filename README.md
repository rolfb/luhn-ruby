# luhn-ruby

Very simple library to calculate and validate Luhn numbers .

## Installation

Add this line to your application's Gemfile:

    gem 'luhn-ruby'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install luhn-ruby

## Usage

``` ruby
require 'luhn'

number = '4111111111111111'

Luhn.valid? number
# => true
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
