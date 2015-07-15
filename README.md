[![Code Climate](https://codeclimate.com/github/karydja/facebook-fan-page-post-grabber/badges/gpa.svg)](https://codeclimate.com/github/karydja/facebook-fan-page-post-grabber)

## Synopsis

A very very tiny simple post grabber from Facebook fan pages.

## Installation

First the typical bundle install:

```shell
bundle install
```

And then you should generate a secret_key_base and add it to the config/initializers/secret_token.rb

```shell
bundle exec rake secret
```

Dirty one-liner 
```shell
cd facebook-group-post-grabber
echo "FacebookGroupPostGrabber::Application.config.secret_key_base = '$(bundle exec rake secret)'" > config/initializers/secret_token.rb
```

Last but not least, .env.sample to .env and set your app token (you can get one from facebook after registering your app in [here](https://developers.facebook.com/apps/async/create/platform-setup/dialog/))

## Tests

Coming soon (:P)

## License

See [LICENSE](LICENSE)
