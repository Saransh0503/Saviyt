#!/bin/bash

# Create virtual environment if it doesn't exist
if [ ! -d "env" ]; then
    python3 -m venv env
fi

# Activate virtual environment
source env/bin/activate

# Run server.py in the background and log output
nohup python3 server.py > server.log 2>&1 &
echo "Server started in the background. Logs are in server.log"

