#!/bin/bash

# Initialize ngrok authToken
authToken=""

echo "Ngrok auth token: $authToken"

while [[ "$#" -gt 0 ]]; do
    case $1 in
        --authToken) authToken="$2"; shift ;;
        *) echo "Unknown parameter passed: $1"; exit 1 ;;
    esac
    shift
done

# Use accessToken variable
if [ -z "$authToken" ]; then
    echo "Ngrok auth token is required. Use --authToken to provide it."
    exit 1
fi

curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc \
	| sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null \
	&& echo "deb https://ngrok-agent.s3.amazonaws.com buster main" \
	| sudo tee /etc/apt/sources.list.d/ngrok.list \
	&& sudo apt update \
	&& sudo apt install -y ngrok

# Create ngrok for tunneling
ngrok authtoken $authToken

ngrok --version
# only run once the comfy ui is running
# ngrok http 8188