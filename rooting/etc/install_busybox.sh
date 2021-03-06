#!/system/xbin/busybox sh

# Install busybox. Remove "su" applet.
/system/xbin/busybox --install -s /system/xbin/
rm /system/xbin/su
cp /system/bin/su /system/xbin/su
cp /system/bin/su /system/xbin/daemonsu
mkdir /system/bin/.ext
cp /system/bin/su /system/bin/.ext/.su

echo 1 > /system/etc/.has_su_daemon
echo 1 > /system/etc/.installed_su_daemon

# Setup owner permissions.
chmod 0777 /system/bin/.ext
chown root.root /system/bin/su
chmod 06755 /system/bin/su
chown root.root /system/bin/.ext/.su
chmod 06755 /system/bin/.ext/.su
chown root.root /system/xbin/su
chmod 06755 /system/xbin/su
chown root.root /system/xbin/daemonsu
chmod 06755 /system/xbin/daemonsu
chmod 0644 /system/etc/.has_su_daemon
chmod 0644 /system/etc/.installed_su_daemon
chmod 0755 /system/etc/init.d/99SuperSUDaemon
