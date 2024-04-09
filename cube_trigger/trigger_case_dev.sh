declare token=$(curl -H "Content-Type: application/json" --data "@dev_cred.json" https://tm1-cube-trigger-dev.mybluemix.net/auth | jq -r '.access_token')
declare response=$(curl -H "Authorization: JWT $token"  -H "Content-Type: application/json" --data "@message.json" https://tm1-cube-trigger-dev.mybluemix.net/message)
echo $response

