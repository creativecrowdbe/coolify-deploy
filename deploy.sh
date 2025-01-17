#!/bin/sh
set -e
last_char=${PLUGIN_COOLIFY_SERVER: -1}
if [ $last_char == "/" ]; then
    url=${PLUGIN_COOLIFY_SERVER::-1}
else
    url=${PLUGIN_COOLIFY_SERVER}
fi
curl \
  -s \
  -X GET \
  -H "Authorization: Bearer ${PLUGIN_API_TOKEN}"\
  -H "Accept: application/json" \
  "$url/api/v1/deploy?uuid=${PLUGIN_PROJECT_UUID}&force=${PLUGIN_FORCE}"