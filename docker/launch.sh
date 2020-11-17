#!/bin/bash
xhost +local:root

IMAGE_NAME=$1

docker run -it --rm --name ros-gui \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=$DISPLAY \
    -e QT_X11_NO_MITSHM=1 \
    -v ~/share:/home/docker/share \
    -v ~/ros_ws/intersection_recognition:/home/docker/catkin_ws/src/intersection_recognition \
    ${IMAGE_NAME:-ros:mymelodic-gui} \
    /bin/bash

xhost -local:root
