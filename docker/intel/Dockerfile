FROM osrf/ros:noetic-desktop-full

USER root
RUN apt update && \
    apt upgrade -y && \
    apt install -y --no-install-recommends \
        libsdl-image1.2-dev \
        libsdl-dev \
        ros-noetic-move-base-msgs \
        ros-noetic-angles \
        ros-noetic-urdf \
        ros-noetic-urg-node \
        ros-noetic-teleop-twist-joy \
        ros-noetic-joystick-drivers \
        ros-noetic-xacro \
        ros-noetic-laser-geometry \
        ros-noetic-map-msgs \
        ros-noetic-diagnostic-updater \
        ros-noetic-robot-state-publisher \
        ros-noetic-tf2-sensor-msgs \
        libyaml-cpp0.6 \
        libyaml-cpp-dev \
        python3-osrf-pycommon \
        python3-catkin-tools \
        python3-rosdep \
        python3-rosinstall-generator \
        python3-wstool \
        python3-rosinstall \
        git \
        tmux \
        vim \
    && \
    apt autoremove -y && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /root/catkin_ws/src
RUN git clone -b noetic-devel https://github.com/ros-planning/navigation.git && \
    git clone -b noetic https://github.com/tiger0421/orne.git && \
    git clone https://github.com/openspur/yp-spur.git && \
    git clone https://github.com/openspur/ypspur_ros.git

WORKDIR /root/catkin_ws

CMD /bin/bash
