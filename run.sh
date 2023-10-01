#!/bin/bash

#-----------------------------------------------------
# Run containers
docker-compose up deconz homeassistant portainer -d
DISPLAY=:0.0 chromium-browser --kiosk http://127.0.0.1:8123/
