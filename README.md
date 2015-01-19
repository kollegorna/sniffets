# Sniffets

![Sniffets](http://images4-d.ravelrycache.com/uploads/Tazzyb/195662530/image_small.jpg)

Simple gem that allows you to inject snippets in pages.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sniffets'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sniffets

Run the generator:

    $ rails generate sniffets:install

And migrate:

    $ rake db:migrate

If you need to add authentication for manipulating the snippets, monkeypatch
`Admin::BaseController` and add a `before_action`.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/sniffets/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
