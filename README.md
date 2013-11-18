# HerokuDeploy

Manage Ruby application deployments to Heroku

## Installation

Clone this project to your working directory (example: presuming your working directory is ~/work)

    $ cd ~/work
    $ git clone git@github.com:hedgeyedev/heroku_deploy.git

## Usage

### To install your application into your Heroku staging server

    $ cd ~/work/<your application project root>
    $ ../heroku_deploy/deploy_staging <your Heroku staging remote name>

Example

    $ ../deploy_staging hedgeye-stv

### To install your application into your Heroku production server

    $ ../heroku_deploy/deploy_production <your Heroku staging remote name>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
