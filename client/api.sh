#!/bin/bash

VERB=$1
HELPER="$(pwd)/../helpers/$VERB.sh"

# note: setting environment variables
source config/$API_ENV.env

# note: adding identifier to uri
if [ $VERB == "PUT" ] || [ $VERB == "DELETE" ] || [[ $VERB == "GET"  && -n $2 ]]; then
  export URI="$URI/$2"
fi

echo $HELPER
echo $URI

# note: special casing to provide payload
case $VERB in
  "PUT")
    PAYLOAD_PATH="$(pwd)/payloads/$3"
    bash $HELPER $PAYLOAD_PATH
    ;;
  "POST")
    PAYLOAD_PATH="$(pwd)/payloads/$2"
    bash $HELPER $PAYLOAD_PATH
    ;;
  *)
    bash $HELPER
    ;;
esac
