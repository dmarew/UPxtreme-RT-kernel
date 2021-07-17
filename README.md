# UPXtreme-RT-kernel
PREEMPT_RT kernel on UP! Xtreme based on UP! kernel hwe-5.4-upboard.
Only tested on UP Xtreme i7C1-8565U

### Disclaimer: use at your own risk!

## Clone repository
``make ~/kernel``
``cd kernel``
``git clone https://github.com/dmarew/UPxtreme-RT-kernel.git``
``cd UPxtreme-RT-kernel``
``chmod +x *.sh``

## Installing Upboard Kernel

``sudo ./install_uboard_kernel.sh``  

### Reboot machine

``sudo reboot``

## Building and Generating binaries

``sudo ./build_rt_kernel.sh``  

## Install kernel

``sudo ./install_rt_kernel.sh``  

### Reboot machine

``sudo reboot``

## Check kernel version to be sure.

``uname -a``

## Latency Test

``sudo ./run_rt_test.sh``  
