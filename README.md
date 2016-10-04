# README

## Setup

1. Install Ruby 2.2.2 
2. `$ gem install bundler`
3. `$ bundle install`

Depending on the system, you may have some system dependencies that need to be addressed. For example, on Red Hat-based machines I usually have to install the `ruby-devel` and `gcc` packages before bundling the gem dependencies. Installing `bundler` may also require first running `$ gem install io-console`.

## Database Setup

Assuming there is a local version of `sqlite` available, a development db can be setup with:

`$ bundle exec rake db:setup`

## How to run the test suite

Unit and integration tests can be run together with:

`$ bundle exec rake test`
