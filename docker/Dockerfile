FROM ros:mymelodic

USER root
RUN apt update && \
    apt upgrade -y && \
    apt install -y --no-install-recommends \
        libsdl-image1.2-dev \
        libsdl-dev \
        ros-melodic-move-base-msgs \
        ros-melodic-angles \
        ros-melodic-urdf \
        ros-melodic-xacro \
        ros-melodic-laser-geometry \
        ros-melodic-map-msgs \
        ros-melodic-diagnostic-updater \
        ros-melodic-robot-state-publisher \
        libyaml-cpp0.5v5 \
        libyaml-cpp-dev \
    && \
    apt autoremove -y && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

USER docker
WORKDIR /home/docker
RUN mkdir -p catkin_ws/src

CMD /bin/bash
