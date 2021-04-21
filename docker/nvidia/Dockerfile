FROM nvidia/opengl:1.0-glvnd-devel-ubuntu20.04

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
        sudo \
        gosu \
        tzdata \
        wget \
        lsb-release \
        python3-argcomplete \
        gnupg2 \
        dirmngr \
        g++ \
        fluid \
        build-essential \
        vim \
        tmux \
    && \
    apt-get clean  && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/*

RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list' && \
    apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654 && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
        ros-noetic-desktop-full \
        python3-catkin-tools \
        python3-rosdep \
        python3-wstool \
        python3-rosinstall \
    && \
    apt-get clean  && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
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
    && \
    apt-get clean  && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/*

ENV TZ=Asia/Tokyo 
ENV LANG=ja_JP.UTF-8

RUN useradd --create-home --home-dir /home/ubuntu --shell /bin/bash --user-group --groups adm,sudo ubuntu && \
    echo ubuntu:ubuntu | chpasswd && \
    echo "ubuntu ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER ubuntu
WORKDIR /home/ubuntu

RUN mkdir -p catkin_ws/src
RUN echo source /opt/ros/noetic/setup.bash >> /home/ubuntu/.bashrc

CMD /bin/bash
