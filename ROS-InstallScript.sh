# Guide to install ROS INDIGO + ARDRONE_AUTONOMY package

# 1. Setup Sources list
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list'

# 2. Set up pub key of ros repo
wget https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -O - | sudo apt-key add -

# 3. Get info from repo
sudo apt-get update

# 4.a Install ROS indigo dependencies
sudo apt-get install build-essential daemontools libasound2-dev libavahi-client-dev libavahi-common-dev libcaca-dev libdbus-1-dev libiw-dev libpulse-dev libsdl1.2-dev libslang2-dev libudev-dev libqglviewer-dev freeglut3-dev libogre-1.9-dev libopenni-dev libflann-dev libvtk5-dev libvtk5.8 libvtk5.8-qt4 -y

# 4.b Some additional media codex
sudo apt-get install gstreamer0.10-plugins-ugly libxine1-ffmpeg gxine mencoder libdvdread4 totem-mozilla icedax tagtool easytag id3tool lame nautilus-script-audio-convert libmad0 mpg321 libavcodec-extra -y

# 4.c Install ROS indigo 
sudo apt-get install ros-indigo-actionlib-msgs ros-indigo-actionlib-tutorials ros-indigo-angles ros-indigo-bond ros-indigo-bond-core ros-indigo-bondcpp ros-indigo-bondpy  ros-indigo-camera-info-manager ros-indigo-catkin ros-indigo-class-loader ros-indigo-cmake-modules   ros-indigo-collada-parser ros-indigo-collada-urdf ros-indigo-common-msgs  ros-indigo-common-tutorials  ros-indigo-control-msgs ros-indigo-cpp-common  ros-indigo-diagnostic-aggregator ros-indigo-diagnostic-analysis ros-indigo-diagnostic-common-diagnostics  ros-indigo-diagnostic-msgs ros-indigo-diagnostic-updater ros-indigo-diagnostics ros-indigo-dynamic-reconfigure ros-indigo-eigen-conversions ros-indigo-eigen-stl-containers ros-indigo-executive-smach ros-indigo-filters ros-indigo-gencpp ros-indigo-genlisp ros-indigo-genmsg ros-indigo-genpy ros-indigo-geometric-shapes ros-indigo-geometry ros-indigo-geometry-msgs   ros-indigo-geometry-tutorials ros-indigo-image-transport ros-indigo-interactive-marker-tutorials ros-indigo-interactive-markers ros-indigo-joint-state-publisher ros-indigo-kdl-conversions ros-indigo-kdl-parser ros-indigo-laser-geometry ros-indigo-libg2o ros-indigo-map-msgs ros-indigo-media-export ros-indigo-message-filters ros-indigo-message-generation ros-indigo-message-runtime ros-indigo-mk ros-indigo-nav-msgs ros-indigo-nodelet ros-indigo-nodelet-core ros-indigo-nodelet-topic-tools ros-indigo-nodelet-tutorial-math ros-indigo-octomap ros-indigo-orocos-kdl ros-indigo-pluginlib ros-indigo-pluginlib-tutorials ros-indigo-python-orocos-kdl ros-indigo-python-qt-binding ros-indigo-qt-dotgraph ros-indigo-qt-gui ros-indigo-qt-gui-cpp ros-indigo-qt-gui-py-common ros-indigo-random-numbers  ros-indigo-resource-retriever ros-indigo-robot ros-indigo-robot-model ros-indigo-robot-state-publisher ros-indigo-ros ros-indigo-ros-base ros-indigo-ros-comm ros-indigo-ros-core ros-indigo-ros-tutorials  ros-indigo-rosbag ros-indigo-rosbag-migration-rule ros-indigo-rosbag-storage  ros-indigo-rosbash ros-indigo-rosboost-cfg ros-indigo-rosbuild ros-indigo-rosclean ros-indigo-rosconsole ros-indigo-rosconsole-bridge   ros-indigo-roscpp ros-indigo-roscpp-core ros-indigo-roscpp-serialization ros-indigo-roscpp-traits ros-indigo-roscpp-tutorials ros-indigo-roscreate ros-indigo-rosgraph ros-indigo-rosgraph-msgs ros-indigo-roslang ros-indigo-roslaunch ros-indigo-roslib ros-indigo-roslint ros-indigo-roslisp ros-indigo-roslz4 ros-indigo-rosmake ros-indigo-rosmaster ros-indigo-rosmsg ros-indigo-rosnode ros-indigo-rosout ros-indigo-rospack ros-indigo-rosparam ros-indigo-rospy ros-indigo-rospy-tutorials ros-indigo-rosservice ros-indigo-rostest ros-indigo-rostime ros-indigo-rostopic ros-indigo-rosunit ros-indigo-roswtf ros-indigo-rqt-action ros-indigo-rqt-bag ros-indigo-rqt-bag-plugins ros-indigo-rqt-console ros-indigo-rqt-dep ros-indigo-rqt-graph ros-indigo-rqt-gui ros-indigo-rqt-gui-cpp ros-indigo-rqt-gui-py ros-indigo-rqt-launch ros-indigo-rqt-logger-level ros-indigo-rqt-moveit ros-indigo-rqt-msg ros-indigo-rqt-nav-view ros-indigo-rqt-plot ros-indigo-rqt-pose-view ros-indigo-rqt-publisher ros-indigo-rqt-py-common ros-indigo-rqt-py-console  ros-indigo-rqt-reconfigure ros-indigo-rqt-robot-dashboard  ros-indigo-rqt-robot-monitor  ros-indigo-rqt-robot-steering ros-indigo-rqt-runtime-monitor ros-indigo-rqt-service-caller ros-indigo-rqt-shell ros-indigo-rqt-srv ros-indigo-rqt-tf-tree ros-indigo-rqt-top ros-indigo-rqt-topic ros-indigo-rqt-web ros-indigo-self-test ros-indigo-sensor-msgs ros-indigo-shape-msgs ros-indigo-shape-tools ros-indigo-smach ros-indigo-smach-msgs ros-indigo-smach-ros ros-indigo-smclib ros-indigo-std-msgs ros-indigo-std-srvs ros-indigo-stereo-msgs ros-indigo-tf ros-indigo-tf-conversions ros-indigo-tf2 ros-indigo-tf2-msgs ros-indigo-tf2-py ros-indigo-tf2-ros ros-indigo-topic-tools ros-indigo-trajectory-msgs ros-indigo-turtle-actionlib ros-indigo-turtle-tf ros-indigo-turtle-tf2 ros-indigo-turtlesim ros-indigo-urdf ros-indigo-urdf-parser-plugin ros-indigo-urdf-tutorial ros-indigo-visualization-marker-tutorials ros-indigo-visualization-msgs ros-indigo-xacro ros-indigo-xmlrpcpp sbcl shiboken sip-dev tango-icon-theme uuid-dev ros-indigo-tf2-geometry-msgs ros-indigo-tf2-sensor-msgs -y

# 5. Initialize ros dependency list
sudo rosdep init
rosdep update

# 6. Add ROS env vars to all bash sessions
echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc

# 7. Install rosinstall
sudo apt-get install python-rosinstall -y

# 8. Install PCL from source 
cd ~/Downloads
rm -rf pcl-*
wget https://github.com/PointCloudLibrary/pcl/archive/pcl-1.7.2.tar.gz
tar -xvf pcl-*
cd pcl-pcl*
gedit CMakeLists.txt
# Add the following line to CmakeLists.txt
# set(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS}  -std=c++11" )
mkdir release
cd release
cmake -DCMAKE_BUILD_TYPE=Release ..
make -j8
sudo make install

# 9. Install ROS packages

# Install SOPHUS in seperate workspace
mkdir -p ~/3rd_party_workspace/src
cd ~/3rd_party_workspace/src
git clone https://github.com/olivierdm/sophus.git -b indigo
cd ~/3rd_party_workspace
catkin_make_isolated -DCMAKE_INSTALL_PREFIX=install_isolated --install
echo 'source ~/3rd_party_workspace/install_isolated/setup.bash' >> ~/.bashrc

# Create new workspace
mkdir -p ~/ros/src
cd ~/ros/src
catkin_init_workspace
echo 'source ~/ros/install/setup.bash' >> ~/.bashrc

bash
USERNAME=olivier
PASSWORD=kakkerlak

# Install all the packages but build in order
cd ~/ros/src
git clone https://github.com/olivierdm/vision_opencv.git
cd ~/ros
catkin_make install

cd ~/ros/src
git clone https://github.com/olivierdm/ardrone_autonomy.git -b indigo-devel
cd ~/ros
catkin_make install

cd ~/ros/src
git clone https://github.com/ros-perception/image_pipeline.git -b indigo
cd ~/ros
catkin_make install

cd ~/Downloads
git clone https://github.com/olivierdm/rqt_common_plugins.git
cp -r ~/Downloads/rqt_common_plugins/rqt_image_view ~/ros/src/.
cd ~/ros
catkin_make install

cd ~/ros/src
git clone https://github.com/ros-perception/pcl_msgs -b indigo-devel
cd ~/ros
catkin_make install

cd ~/ros/src
git clone https://github.com/ros-perception/pcl_conversions.git -b indigo-devel
cd ~/ros
catkin_make install

cd ~/ros/src
git clone https://github.com/ros-perception/perception_pcl.git -b indigo-devel
cd ~/ros
catkin_make install

cd ~/ros/src
git clone https://github.com/olivierdm/rviz.git -b indigo-devel
cd ~/ros
catkin_make install

cd ~/ros/src
git clone https://github.com/olivierdm/lsd_slam.git -b catkin
cd ~/ros
source ~/3rd_party_workspace/install_isolated/setup.bash
catkin_make install

cd ~/ros/src
git clone https://github.com/olivierdm/tum_ardrone.git -b indigo-devel
cd ~/ros
catkin_make install

cd ~/ros/src
git clone https://github.com/olivierdm/pointcloudregistration.git
cd ~/ros
catkin_make install


#There may be interrupts that ask if you want to install extra packages (yes auto installs it)
#must be done without --pkg switch to generate setup.bash and etc. files
yes | catkin_make install
# 9. Add new ROS packages to all bash sessions
echo "source ~/ros/install/setup.bash" >> ~/.bashrc
bash




