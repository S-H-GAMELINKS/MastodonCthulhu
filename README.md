# MastodonCthulhu

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/mastodon_cthulhu`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mastodon_cthulhu'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mastodon_cthulhu

## Usage

- Make initializers file  
config\initializers\mastodon_cthulhu.rb

```ruby
MastodonCthulhu.setup do |status|	
  	
　# クトゥルフ神話機能	
  fortune = MastodonCommand::Random.new('[ 　\n]?#(おみくじ|占い|運勢)[ 　\n]?', %w(いあいあくとぅるぅ いあいあはすたぁ いあいあつとぅぁぐぁ ふんぐるいむぐるうなふ うがふなぐる ふたぐん))
  status = fortune.convert(status) if fortune.match(status)	

end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/mastodon_cthulhu. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## ref

[mastodon_command](https://github.com/kenchiki/mastodon_command)