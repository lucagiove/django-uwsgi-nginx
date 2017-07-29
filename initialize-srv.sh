#!/usr/bin/env bash

# if app folder does not exists already
# FIXME seems not to work
if [[ ! -d /srv/$APP_NAME ]]; then
    touch /srv/$APP_NAME/media/PUT_HERE_YOUR_GENERATED_DATA
    touch /srv/$APP_NAME/static/PUT_HERE_YOUR_STATIC_DATA
    chown -R :www-data /srv/$APP_NAME/
    chmod -R g=rX /srv/$APP_NAME/
    # TODO if empty git clone
    # django migrate or django create new
fi
# those folder are required by nginx, if they exist already nothing will change
mkdir -p /srv/$APP_NAME/media
mkdir -p /srv/$APP_NAME/static
exit 0
