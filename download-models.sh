#!/bin/bash

# find the correct directory to put each model into

cd 
pwd

cd "$(pwd)/flux-ai-comfy-vm/ComfyUI/models/clip"
pwd 

# We should be in the /
echo "Download clip_l model < 200MB [slow]"

wget https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/clip_l.safetensors

echo "Download scaled encoded 5GB [slow]"

wget https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp8_e4m3fn_scaled.safetensors

pwd

cd ..

# We should now be in the ComfyUI/models folder

cd vae
pwd

echo "Download ae tensors for vae < 300MB [quick]"
wget https://huggingface.co/black-forest-labs/FLUX.1-schnell/resolve/main/ae.safetensors


cd ..
pwd

cd loras
echo "Download loras 500MB [quick]"
wget https://huggingface.co/comfyanonymous/flux_RealismLora_converted_comfyui/resolve/main/flux_realism_lora.safetensors

pwd
cd ..

cd unet
echo "Download loras 24GB [super slow]"
wget https://huggingface.co/black-forest-labs/FLUX.1-schnell/resolve/main/flux1-schnell.safetensors


# From Comfy UI
