#!/bin/bash

DATE=`date  +'%Y_%m_%d-%H_%M_%S'`
API_KEY='CHANGE_ME_TOKEN'
URL="https://CHANGME_URL:PORT/api/backup"
curl -X POST --header 'Content-Type: application/json' --header "x-api-key: $API_KEY" --url "$URL" --data '{ "password": "" }' > portainer_bkp_$DATE.tar.gz
