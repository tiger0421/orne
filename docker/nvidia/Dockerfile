FROM nvidia/opengl:1.0-glvnd-devel-ubuntu18.04

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
        ros-melodic-desktop-full \
        python-catkin-tools \
        python-rosdep \
        python-wstool \
        python-rosinstall \
    && \
    apt-get clean  && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
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
RUN echo source /opt/ros/melodic/setup.bash >> /home/ubuntu/.bashrc

CMD /bin/bash
