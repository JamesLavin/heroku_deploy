#!/usr/bin/env bash
set -o errexit

app=$1

echo '============================================================================'
echo 'NOTE: You are deploying to a production environment.  If you want to deploy'
echo '      to a staging environment, please use `script/prep-release` instead.'
echo '============================================================================'
echo
ruby -e "print %q{Please type 'production' to continue: }; unless gets.chomp == 'production'; puts 'Exiting...'; exit -1; end"

HEROKU_CONSTANTS=.heroku_env_production
source bin/roboconf.sh
run_heroku_config_if_settings_changed

git push "$app" master

# Browse Heroku to make sure the app starts.
curl "http://$app.herokuapp.com/" > /dev/null
