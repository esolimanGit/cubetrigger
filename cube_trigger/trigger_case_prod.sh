declare token=$(curl -H "Content-Type: application/json" --data "@prod_cred.json" https://tm1-cube-trigger-prod.mybluemix.net/auth | jq -r '.access_token')
declare response=$(curl -H "Authorization: JWT $token"  -H "Content-Type: application/json" --data "@message.json" https://tm1-cube-trigger-prod.mybluemix.net/message)
echo $response

