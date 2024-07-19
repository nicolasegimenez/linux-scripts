# Quemu its the best virtualizator that exist


#First Create virtual hdd disk
qemu-img create -f qcow2 hcc-centOS.qcow2 10G

#Create the virtual machine and start with iso
qemu-system-x86_64 -m 2G -smp 2 --enable-kvm -name "centOS-Stream" -boot d -hda hcc-centOS.qcow2 -cdrom <PATH-TO-ISO> 
# After the SO instalation you can start the VM without the ISO:

qemu-system-x86_64 -m 2G -smp 2 --enable-kvm -name "centOS-Stream" -boot d -hda hcc-centOS.qcow2
