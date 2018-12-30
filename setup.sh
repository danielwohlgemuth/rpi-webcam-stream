#!/bin/sh

sudo mkdir -p /etc/rpi-webcam-stream
sudo cp ffserver.conf /etc/rpi-webcam-stream

sudo cp rpi-webcam-capture.service /etc/systemd/system/rpi-webcam-capture.service
sudo cp rpi-webcam-stream.service /etc/systemd/system/rpi-webcam-stream.service

sudo systemctl enable rpi-webcam-stream.service
sudo systemctl restart rpi-webcam-stream.service
