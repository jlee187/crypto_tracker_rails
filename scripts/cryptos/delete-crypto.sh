#!/bin/bash
curl --include --request DELETE "http://localhost:4741/cryptos/${ID}" \
--header "Authorization: Token token=${TOKEN}"
