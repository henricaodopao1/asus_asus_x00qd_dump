#!/system/bin/sh

#GENERAL_LOG
GENERAL_LOG=/data/media/0/logs/

mkdir -p $GENERAL_LOG/anr
cp -rf /data/anr/* $GENERAL_LOG/anr/

am broadcast -a "com.asus.copyanr.completed"
