# Net::HTTP::Report

HTTP REPORT is a [registered HTTP method](http://www.iana.org/assignments/http-methods/http-methods.xhtml) defined in [RFC 3253](https://tools.ietf.org/html/rfc3253), Section 3.6. This gem adds the `Net::HTTP::Report` class that can be used to build REPORT requests for use with the `net/http` standard library.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'net-http-report'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install net-http-report

## Usage

The `Net::HTTP::Report` method behaves similarly to other [`Net::HTTPRequest`](https://ruby-doc.org/stdlib/libdoc/net/http/rdoc/Net/HTTPRequest.html) classes in the [`net/http`](https://ruby-doc.org/stdlib/libdoc/net/http/rdoc/index.html) library. Here's an example of sending a REPORT request with a JSON payload and printing out the response body.

```ruby
require 'net-http-report'
require 'json'

uri = URI('http://www.example.com')

Net::HTTP.start(uri.host, uri.port) do |http|
  request = Net::HTTP::Report.new(uri)
  request['Content-Type'] = 'application/json'
  request.body = { 'ids' => [1, 2, 3] }.to_json

  response = http.request(request)
  puts response.body
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/salsify/net-http-report.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
