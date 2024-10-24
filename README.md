# flux-ai-comfy-vm

## About
We are creating a script for running the flux ai model on ComfyUI using only a CPU. 

## Requirements
- Virtual machine
    - Ubuntu 20.04 LTS
    - Storage 140GB or more
    - RAM 64GB or more
    - GPU (optional) in fact this guide does not use a GPU with ComfyUI
- Ngrok Account
- Huggingface account


## Dependencies
- Ngrok auth token (https://ngrok.com/)[https://ngrok.com/] for tunneling once the comfy ui application is running on port 8188
-  Huggingface access token (https://huggingface.co/settings/tokens)[https://huggingface.co/settings/tokens]

## Install
- ## Step 1: Get repo
    - Cone the repo git clone https://github.com/khomotsozwanedev/flux-ai-comfy-vm.git
    - cd flux-au-comfy-vm
- ## Step 2: System set up
    - chmod +x system-install.sh
    - run the script using ./system-install.sh
- ## Step 3: Setup ngrok 
    - chmod +x ngrok-setup.sh
    - run the script using ./setup-ngrok.sh --authToken {authToken}
- ## Setup huggingface
    - chmod +x setup-hugging-face.sh
    - run the script using ./setup-hugging-face.sh --accessToken {accessToken}
- ## Step 4: Install ComfyUI
    - chmod +x install-comfy-ui.sh
    - run the script with ./install-comfy-ui.sh 
- ## Step 5: Setup ComfyUI
    - cd ComfyUI
    - 