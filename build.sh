export CROSS_COMPILE=/usr/adm/android/arm-eabi-4.8/bin/arm-eabi-

# Kernel building config
make O=/usr/adm/outpoot ARCH=arm CROSS_COMPILE=$CROSS_COMPILE eagle_ds_defconfig

# Kernel building
make O=/usr/adm/outpoot ARCH=arm CROSS_COMPILE=$CROSS_COMPILE -j 4

#copy modules into ramfs
mkdir -p /usr/adm/outpoot/system/lib/modules
rm -rf /usr/adm/outpoot/system/lib/modules/*
cd /usr/adm/outpoot/
find -name '*.ko' -exec cp -av {} /usr/adm/outpoot/system/lib/modules/ \;



