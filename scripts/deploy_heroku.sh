#!/bin/bash

set -e

docker pull $APP_PROD_IMAGE
docker tag $APP_PROD_IMAGE $HEROKU_IMAGE
docker push $HEROKU_IMAGE
