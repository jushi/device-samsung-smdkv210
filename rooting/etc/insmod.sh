#!/system/xbin/busybox sh

for MODULE in `busybox find /system/lib/modules/ -name "*.ko"`
do
    insmod $MODULE
done
