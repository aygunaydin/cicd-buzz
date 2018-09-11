#!/bin/sh
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku plugins:install heroku-container-registry
docker login -u aygunaydin@gmail.com --password=$HEROKU_API_KEY registry.heroku.com
heroku stack:set heroku-16
heroku container:release web --app $HEROKU_APP_NAME

