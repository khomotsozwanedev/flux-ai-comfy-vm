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
- Ngrok auth token [https://ngrok.com/](https://ngrok.com/) for tunneling once the comfy ui application is running on port 8188
-  Huggingface access token [https://huggingface.co/settings/tokens](https://huggingface.co/settings/tokens)

## Install
- ## Step 1: Get repo
    - Cone the repo git clone https://github.com/khomotsozwanedev/flux-ai-comfy-vm.git
    - cd flux-au-comfy-vm
- ## Step 2: System set up
    - chmod +x system-install.sh
    - run the script using ./system-install.sh
- ## Step 3: Setup ngrok 
    - chmod +x setup-ngrok.sh
    - run the script using ./setup-ngrok.sh --authToken {authToken}
- ## Setup 4: huggingface
    - chmod +x setup-hugging-face.sh
    - run the script using ./setup-hugging-face.sh --accessToken {accessToken}
- ## Step 5: Install ComfyUI
    - chmod +x install-comfy-ui.sh
    - run the script with ./install-comfy-ui.sh 
- ## Step 6: Setup ComfyUI
    - chmod +x download-models.sh
    - run the script with ./download-models.sh
- ## Step 7: Run ComfyUI
    - cd ComfyUI
    - Start the Comfy UI application
    - run python3 main.py --cpu
    - You should have the following message "Starting server To see the GUI go to: http://127.0.0.1:8188"
    - Open a new connection (VM) and or on a new terminal (Local Machine)
    - Run ngrok to tunnel through the the machine
    - run ngrok http http://127.0.0.1:8188
- ## Step 8: Follow the steps to set up Comfy UI
    - Follow any and all tutorials to set up Comfy UI, use the image in the assets folder to get the get started ![Comfy UI Workflow image](https://github.com/khomotsozwanedev/flux-ai-comfy-vm/blob/main/assets/flux_schnell_example.png)
    - [https://www.youtube.com/watch?v=3kljJNosQ1I](https://www.youtube.com/watch?v=3kljJNosQ1I)
