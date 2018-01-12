#!/bin/bash

curl --include --request PATCH "http://localhost:4741/cryptos/${ID}" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
      "crypto": {
        "name": "'"${NAME}"'",
        "quantity": "'"${QUANTITY}"'"
      }
  }'
