#!/bin/bash

echo "Step1: Comfy UI Setup"

# Update the package list
sudo apt-get update

# Upgrade installed packages
sudo apt-get upgrade -y

# Install general tools
sudo apt-get install -y build-essential curl wget git
sudo apt-get install -y vim nano
sudo apt-get install -y net-tools
sudo apt-get install -y htop
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt update
sudo apt-get install -y python3.10
sudo apt install -y python3.10-venv
sudo apt install -y python3-pip
sudo apt install -y zip
sudo apt-get install -y libgl1-mesa-glx
sudo apt-get install -y inotify-tools # Tool to be used to watch folder changes
python3 --version
sudo apt-get autoremove -y
sudo apt-get clean

pip install torch torchvision torchaudio

echo "Completed set up steps"

