#!/bin/bash

aws apigatewayv2 get-integrations --api-id API_ID

API_NAME="api"
API_ID=$(aws apigatewayv2 get-apis --query "Items[?Name=='${API_NAME}'].ApiId" --output json | jq -r '.[]')
echo ${API_ID}
aws apigatewayv2 get-integrations --api-id ${API_ID}

