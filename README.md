# orne

## Usage
### Host
```
$ mkdir -p ~/catkin_ws/src
$ cd ~/catkin_ws/src
$ git clone -b melodic-devel https://github.com/ros-planning/navigation.git
$ git clone --recursive -b melodic https://github.com/tiger0421/orne.git
$ git clone https://github.com/akhil22/velodyne_simulator.git
$ cd ..
$ catkin build
```

### Docker
```
$ mkdir ~/ros_ws
$ cd ~/ros_ws
$ git clone -b melodic-devel https://github.com/ros-planning/navigation.git
$ git clone --recursive -b melodic https://github.com/tiger0421/orne.git

(init)
$ cd ~/ros_ws/orne/docker
$ docker-compose up -d
$ docker exec -it ros_navigation bash
$ cd ~/catkin_ws
$ catkin build
```

#### Use GUI in Docker
If you want to use GUI(rviz, gazebo etc.), run docker-set-gui.sh
```
$ cd ~/ros_ws/orne/docker
$ sudo chmod a+x docker-set-gui.sh
$ sh docker-set-gui.sh
```

## TODO
* YPSpur_ros
* 3D Navigation
* neonavigation
