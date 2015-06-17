cd ~
wget http://download.qt-project.org/official_releases/online_installers/qt-opensource-linux-x64-1.6.0-5-online.run
chmod +x qt-opensource-linux-x64-*
./qt-opensource-linux-x64-*
# Add qt-creator to your PATH
echo "PATH=$PATH:/home/rosuser/Qt/Tools/QtCreator/bin" >> ~/.profile
source ~/.profile