#!/bin/bash

# Update and install Python
sudo apt update
sudo apt install python3 -y

sudo apt install python3-pip -y

# Install Flask
pip install flask --break-system-packages

# Copy and run the Flask app
cd /tmp/
python3 app.py > /dev/null 2>&1 &
