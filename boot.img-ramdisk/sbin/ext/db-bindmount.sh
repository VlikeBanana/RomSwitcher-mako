#!/sbin/busybox sh

mkdir -p /1stdata/dual/2nddata
mount --bind /1stdata/dual/2nddata /data

mount -o remount,rw /system
/sbin/busybox mount -t rootfs -o remount,rw rootfs

chmod 0644 /system/app/ROMSwitcher.apk

chmod 755 /system

/sbin/busybox mount -t rootfs -o remount,ro rootfs
mount -o remount,ro /system
