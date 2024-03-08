# Metafor

A gem to explain complex ideas with simple analogies

## Installation

`gem install metafor`

## Usage

Get an API key from OpenAI for gpt4-turbo: https://platform.openai.com/

Set your API key as OPENAI_API_KEY in your environment

```ruby
require 'metafor'

Metafor.generate("object oriented programming")
# => "Object-oriented programming (OOP) is like building
#.    with LEGOs. In the world of LEGOs, each piece is an
#     'object' with specific characteristics and ways it
#     can connect with other pieces. OOP uses 'objects'
#.    that contain data and code to interact with other
#     objects. Just like LEGO pieces snap together to build
#     complex structures, OOP allows developers to create
#     complex software by defining how objects interact with
#     one another."
```
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/AndrewBKang/metafor. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/AndrewBKang/metafor/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Metafor project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/metafor/blob/main/CODE_OF_CONDUCT.md).
