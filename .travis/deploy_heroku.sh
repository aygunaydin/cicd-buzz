#!/bin/sh
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku plugins:install heroku-container-registry
docker login -u aygunaydin@gmail.com --password=$HEROKU_API_KEY registry.heroku.com
heroku container:releaseh web --app $HEROKU_APP_NAME
