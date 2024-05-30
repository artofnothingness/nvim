sudo apt update
sudo apt install build-essential

VERSION=gdb-14.2
wget https://ftp.gnu.org/gnu/gdb/${VERSION}.tar.gz
tar -xvzf ${VERSION}.tar.gz

cd ${VERSION}
./configure
make
sudo make install
cd ..

rm -rf ${VERSION}.tar.gz
rm -rf ${VERSION}
