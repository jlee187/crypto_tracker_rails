#!/bin/bash

curl --include --request GET http://localhost:4741/cryptos/ \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"
