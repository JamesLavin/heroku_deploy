#!/usr/bin/env bash
set -o errexit

echo "Beginning deploy_staging.sh - \$1 is '$1'"
echo "In deploy_staging.sh - about to source roboconf.sh"
source ../roboconf/roboconf.sh
echo "In deploy_staging.sh - finished sourcing roboconf.sh"

echo "Before (maybe) invoking show_prep_release_usage_and_exit"
if [ $# -ne 1 ]; then

  echo_cmd show_prep_release_usage_and_exit
fi

app="$1"

HEROKU_CONSTANTS=.heroku_env_staging
echo_cmd run_heroku_config_if_settings_changed

function update_submodules_and_commit_shas {
  echo_cmd git submodule update --remote --merge
  git_status=$(git status)
  if [[ "$git_status" == *"Changes not staged"* ]]; then
    git commit -a -m "auto-update all submodules"
  fi
}

# Commenting this out for now because I wanted to discuss this but it got merged in
# and the Git version on the Jenkins box isn't up to date enough to handle
# 'git submodule update --remote --merge'

# update_submodules_and_commit_shas

# Also, Diego says we need to push the new commit to hedgeyedev/hedgeye-marketing
# and that doing so requires placing credentials on this server. I can't do that.

branch_name=$(git rev-parse --abbrev-ref HEAD)
echo_cmd git push --force "$app" "$branch_name":master

# Browse Heroku to make sure the app starts.
curl "http://$app.herokuapp.com/" > /dev/null

echo
echo '========================================================================='
echo 'Deploy complete.  If you want to push error pages to s3, see script/prep-release for details.'
echo '========================================================================='
echo
