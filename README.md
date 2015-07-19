[![Code Climate](https://codeclimate.com/github/karydja/facebook-fan-page-post-grabber/badges/gpa.svg)](https://codeclimate.com/github/karydja/facebook-fan-page-post-grabber)

## Synopsis

A very very tiny simple post grabber from Facebook fan pages.

## Installation

First do the typical bundle install:

```shell
bundle install
```

After that you should rename .env.sample to .env.

```shell
mv .env.sample .env
```

You should also generate a secret_key_base and put it in your .env where it is noted.

```shell
$ bundle exec rake secret
AB129090DEADBEEFD00DADCAFEBABE
```

```
SECRET_TOKEN="AB129090DEADBEEFD00DADCAFEBABE"
```

Last but not least, put your app token (you can get one from Facebook after registering your app in [here](https://developers.facebook.com/apps/async/create/platform-setup/dialog/)) in .env where it is noted.

```
FACEBOOK_ACCESS_TOKEN="12345567890|53C3TC0DE53C3TC0DE53C3TC0DE"
```

## Tests

You can run the tests with the basic rspec command:

```shell
rspec
```

## License

See [LICENSE](LICENSE)
