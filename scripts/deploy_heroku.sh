#!/bin/bash

set -e


heroku whoami


docker pull $APP_PROD_IMAGE
docker tag $APP_PROD_IMAGE $HEROKU_IMAGE
docker push $HEROKU_IMAGE
