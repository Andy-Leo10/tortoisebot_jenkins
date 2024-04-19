#!/bin/bash

# Check if Docker is installed
if ! command -v docker &> /dev/null
then
    echo "Docker is not installed. Installing now..."
    sudo apt-get update
    sudo apt-get install docker.io docker-compose -y
    sudo service docker start
else
    echo "Docker is already installed."
fi
