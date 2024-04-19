#!/bin/bash

# Run Docker-related commands in a subshell
sudo sh -c 'newgrp docker << END
    # Check if Docker is running and start it if not
    if ! sudo service docker status; then
        sudo service docker start
    fi

    # Set the DOCKER_HOST variable
    export DOCKER_HOST=unix:///var/run/docker.sock

    cd /home/user/catkin_ws/src/ros1_ci/
    docker-compose -f docker-compose-sim1.yml up --build
END'