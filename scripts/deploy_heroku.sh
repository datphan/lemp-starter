#!/bin/bash

set -e


chmod 600 ~/.netrc # Heroku cli complains about permissions without this

heroku whoami

docker pull $APP_PROD_IMAGE
docker tag $APP_PROD_IMAGE $HEROKU_IMAGE
docker push $HEROKU_IMAGE
