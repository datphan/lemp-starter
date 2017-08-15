#!/usr/bin/env bash

set -e

echo "--- - -- -- - ------ - - - -- - -- "

printenv NGINX_PORT

export NGINX_PORT=$NGINX_PORT

envsubst < /etc/nginx/conf.d/default.conf.tpl > /etc/nginx/conf.d/default.conf

nginx -g "daemon off;"