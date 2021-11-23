cd linux-4.14.253 
sudo qemu-system-x86_64 -kernel arch/x86/boot/bzImage \
-boot c -m 2049M -hda ../buildroot/output/images/rootfs.ext4 \
-append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr scsi_mod.use_blk_mq=1 dm_mod.use_blk_mq=y" \
-serial stdio -display none
