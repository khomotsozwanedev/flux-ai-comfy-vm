#!/bin/bash

# Initialize variables
accessToken=""

while [[ "$#" -gt 0 ]]; do
    case $1 in
        --accessToken) accessToken="$2"; shift ;;
        *) echo "Unknown parameter passed: $1"; exit 1 ;;
    esac
    shift
done

# Use accessToken variable
if [ -z "$accessToken" ]; then
    echo "Huggingface access token is required. Use --accessToken to provide it."
    exit 1
fi

echo "Huggingface access token: $accessToken"

# weird thing happens where we are 
export PATH=$PATH:~/.local/bin

# Install huggingface cli
pip install -U "huggingface_hub[cli]"

# Login to hugging face
git config --global credential.helper store

echo "Logging into Hugging Face now and adding token to the system"
huggingface-cli login --token $accessToken --add-to-git-credential


# Print the logged in user
huggingface-cli whoami