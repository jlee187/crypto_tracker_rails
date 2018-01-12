  #!/bin/bash

  curl --include --request POST "http://localhost:4741/cryptos/" \
    --header "Authorization: Token token=${TOKEN}" \
    --header "Content-Type: application/json" \
    --data '{
        "crypto": {
          "name": "'"${NAME}"'",
          "quantity": "'"${QUANTITY}"'"
        }
    }'

echo
