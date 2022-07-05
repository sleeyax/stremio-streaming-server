#!/bin/sh
if [ $FORCE_HTTPS == 1 ]; then
  echo 'Forcing HTTPS for serverURL.'
  sed -i "s~var serverUrl = encodeURIComponent( protocol + req.headers.host);~var serverUrl = encodeURIComponent( 'https://' + req.headers.host);~g" server.js
fi

node server.js
