#!/bin/bash

CLIENT_ID="test"
# CLIENT_SECRET="dQCy2jsC5IzoQUmcnHSO0oBMtCYOqyVy"
REALM_NAME="test"
USERNAME="mike@yopmail.com"
PASSWORD="foobar"
ROOT_URL=http://localhost:9000

curl -X POST "$ROOT_URL/realms/$REALM_NAME/protocol/openid-connect/token" \
-H "Content-Type: application/x-www-form-urlencoded" \
-d "username=$USERNAME&password=$PASSWORD&client_id=$CLIENT_ID&grant_type=password&scope=openid" \
-k 
