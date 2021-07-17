apt -y install build-essential fakeroot dpkg-dev perl libssl-dev bc gnupg dirmngr libncurses5-dev libelf-dev flex bison
mkdir ~/kernel
cd ~/kernel
git clone https://github.com/AaeonCM/ubuntu-bionic-up.git
cd ubuntu-bionic-up
git checkout hwe-5.4-upboard
wget "https://mirrors.edge.kernel.org/pub/linux/kernel/projects/rt/5.4/older/patch-5.4.66-rt38.patch.xz"
unxz -cd patch-5.4.66-rt38.patch.xz | patch -p1
wget "https://raw.githubusercontent.com/dmarew/UPxtreme-RT-kernel/main/config"
mv config .config
make -j`nproc` &&
make -j`nproc` bindeb-pkg
