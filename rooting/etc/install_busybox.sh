#!/system/xbin/busybox sh

# Install busybox. Remove "su" applet.
/system/xbin/busybox --install -s /system/xbin/
rm /system/xbin/su

# Setup owner permissions.
chown root.shell /system/bin/su
chmod 06755 /system/bin/su
chmod 0755 /system/etc/init.d/99SuperSUDaemon

# Make su symlink
ln -s /system/bin/su /system/xbin/su
