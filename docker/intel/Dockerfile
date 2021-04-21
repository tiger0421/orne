FROM osrf/ros:melodic-desktop-full

USER root
RUN apt update && \
    apt upgrade -y && \
    apt install -y --no-install-recommends \
        libsdl-image1.2-dev \
        libsdl-dev \
        ros-melodic-move-base-msgs \
        ros-melodic-angles \
        ros-melodic-urdf \
        ros-melodic-urg-node \
        ros-melodic-teleop-twist-joy \
        ros-melodic-joystick-drivers \
        ros-melodic-xacro \
        ros-melodic-laser-geometry \
        ros-melodic-map-msgs \
        ros-melodic-diagnostic-updater \
        ros-melodic-robot-state-publisher \
        ros-melodic-tf2-sensor-msgs \
        libyaml-cpp0.5v5 \
        libyaml-cpp-dev \
        python-catkin-tools \
        python-rosdep \
        python-rosinstall-generator \
        python-wstool \
        python-rosinstall \
        git \
        tmux \
        vim \
    && \
    apt autoremove -y && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /root/catkin_ws/src
RUN git clone -b melodic-devel https://github.com/ros-planning/navigation.git && \
    git clone -b melodic https://github.com/tiger0421/orne.git && \
    git clone https://github.com/openspur/yp-spur.git && \
    git clone https://github.com/openspur/ypspur_ros.git

WORKDIR /root/catkin_ws

CMD /bin/bash
