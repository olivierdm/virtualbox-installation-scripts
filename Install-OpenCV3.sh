#####################
# OpenCV3 Intallation
#####################
#install build essentials
sudo apt-get install build-essential cmake git libgtk2.0-dev pkg-config libpython3-dev python3-sphinx python3-numpy -y
#install codecs and video handling
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libxine-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev libtbb-dev libqt4-dev libfaac-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev x264 v4l-utils unzip -y
sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev -y
# install opengl libraries
sudo apt-get install mesa-common-dev -y
sudo apt-get install libglu1-mesa-dev -y
# install opencl libraries
sudo apt-get install ocl-icd-opencl-dev -y


cd ~/Downloads
git clone https://github.com/Itseez/opencv.git
# Remove OpenCV:
# sudo rm /usr/local/lib/libopencv*
# sudo rm /usr/local/bin/opencv*
# sudo rm -rf /usr/local/share/OpenCV
# sudo rm -rf /usr/local/include/opencv*
git clone https://github.com/Itseez/opencv_contrib.git

rm -r clBLAS*
rm -r clFFT*

wget https://github.com/clMathLibraries/clBLAS/releases/download/v2.4/clBLAS-2.4.0-Linux-x64.tar.gz
tar -xvf clBLAS*
sudo cp -r clBLAS*/bin/* /usr/local/bin/.
sudo cp -r clBLAS*/lib64/* /usr/local/lib/.
sudo cp -r clBLAS*/include/* /usr/local/include/.

wget https://github.com/clMathLibraries/clFFT/releases/download/v2.2/clFFT-2.2.0-Linux-x64.tar.gz
tar -xvf clFFT*
sudo cp -r clFFT*/bin/* /usr/local/bin/.
sudo cp -r clFFT*/lib64/* /usr/local/lib/.
sudo cp -r clFFT*/include/* /usr/local/include/.

cd opencv
mkdir release
cd release
export CMAKE_CXX_FLAGS=-std=c++11
cmake -D CMAKE_BUILD_TYPE=RELEASE -DOPENCV_EXTRA_MODULES_PATH=~/Downloads/opencv_contrib/modules -DBUILD_opencv_adas=off -DBUILD_opencv_bgsegm=OFF -DBUILD_opencv_bioinspired=OFF -DBUILD_opencv_matlab=OFF -DBUILD_opencv_saliency=OFF -DBUILD_opencv_ccalib=OFF -DBUILD_opencv_datasets=OFF -DBUILD_opencv_face=OFF -DBUILD_opencv_line_descriptor=OFF -DBUILD_opencv_reg=OFF -DBUILD_opencv_optflow=OFF -DBUILD_opencv_rgbd=off -DBUILD_opencv_rgbd=OFF -DBUILD_opencv_surface_matching=OFF -DBUILD_opencv_text=OFF -DBUILD_opencv_ximgproc=OFF -DBUILD_opencv_xobjdetect=OFF -D BUILD_opencv_java=OFF -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_TBB=ON -D WITH_V4L=ON -D WITH_QT=ON -D WITH_OPENGL=ON -D BUILD_TESTS=OFF -D BUILD_PERF_TESTS=OFF -D WITH_CUDA=OFF  ..
make -j8
sudo make install
#detect newly installed libraries
sudo ldconfig
