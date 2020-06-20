#!/bin/bash

sudo apt-get update
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install python3.7
sudo apt-get install -yq python3-pip htop nano git wget libglib2.0-0 ffmpeg
sudo apt-get install pkg-config
sudo apt-get install libfreetype6-dev
virtualenv -p python3.7 venv
venv/bin/pip3 install --upgrade pip
venv/bin/pip3 install -r requirements.txt


