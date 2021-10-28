#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:21755126:5a2703a7e75e5103e59c2ce4ba9aa433d907a4b2; then
  applypatch --bonus /system/etc/recovery-resource.dat \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:15316210:c700f38327aeaf5d9f7dce31a6340303dd73e56c \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:21755126:5a2703a7e75e5103e59c2ce4ba9aa433d907a4b2 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
