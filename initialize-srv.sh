#!/usr/bin/env bash

# if they exist already nothing will change
mkdir -p /srv/$APP_NAME/media
mkdir -p /srv/$APP_NAME/static

# if app folder does not exists already
if [[ ! -d /srv/django/$APP_NAME ]]; then
    touch /srv/$APP_NAME/media/PUT_HERE_YOUR_GENERATED_DATA
    touch /srv/$APP_NAME/static/PUT_HERE_YOUR_STATIC_DATA
    # FIXME chown to www-data?
    # TODO if empty git clone
    # django migrate or django create new
    exit 0
fi
exit 0
