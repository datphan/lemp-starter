#!/usr/bin/env bash

set -e

envsubst '${PORT}' < /etc/nginx/conf.d/default.conf.tpl > /etc/nginx/conf.d/default.conf

nginx -g "daemon off;"