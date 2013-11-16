# HerokuDeploy

Manage Ruby application deployments to Heroku

## Installation

Add this line to your application's Gemfile:

    gem 'heroku_deploy'

And then execute:

    $ bundle install --binstubs

Or install it yourself as:

    $ gem install heroku_deploy

## Usage

### To install your application into your Heroku staging server

    $ bin/deploy_staging <your Heroku staging remote name>

Example

    $ bin/deploy_staging hedgeye-stv

### To install your application into your Heroku production server

    $ bin/deploy_production <your Heroku staging remote name>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
