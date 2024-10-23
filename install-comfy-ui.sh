#!/bin/bash

git clone https://github.com/comfyanonymous/ComfyUI.git
cd ComfyUI

pwd

pip install -r requirements.txt

echo "Completed comfy ui install"

# Running comfy UI
# python3 main.py --cpu