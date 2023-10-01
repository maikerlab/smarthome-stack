#!/bin/bash

#-----------------------------------------------------
# Prerequisites for deCONZ Container
# 1) Allow user to access serial devices
sudo usermod -a -G dialout $USER
# 2) Make sure latest version of wiringpi is installed
sudo apt install wiringpi

#-----------------------------------------------------
# Prerequisites for HomeAssistant
sudo useradd -r -s /sbin/nologin homeassistant
sudo usermod -a -G homeassistant pi
sudo mkdir -p /opt/homeassistant/config
sudo chown -R homeassistant:homeassistant /opt/homeassistant
