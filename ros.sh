# Installing ROS
参考
- [didi](https://github.com/udacity/didi-competition/blob/master/docs/GettingStarted.md)
This tutorial covers installing ROS Indigo on Ubuntu 14.04. These versions work well with Autoware, an open-source self-driving car project built on top of ROS. Later on, Autoware will be useful for camera/LIDAR calibration.
## todo
add 

1. Setup your sources.list
```
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
```
2. Set up your keys
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

```
sudo apt-get update	
``` 
3. Install ROS(this will take a few minutes)
```
sudo apt-get install ros-indigo-desktop-full
```
4. Update your rosdep(dependency management tool)
```
sudo rosdep init
rosdep update
```
5. Update `env` variables
```
echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc
```
