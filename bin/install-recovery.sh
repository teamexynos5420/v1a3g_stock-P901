#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/mmcblk0p10:7645184:6ffc725dd448f248fecfe5083fec137ddefc69c7; then
  applypatch EMMC:/dev/block/mmcblk0p9:7112704:cfa23a29d6dfe562ba800d79f197fc26e5be5c39 EMMC:/dev/block/mmcblk0p10 6ffc725dd448f248fecfe5083fec137ddefc69c7 7645184 cfa23a29d6dfe562ba800d79f197fc26e5be5c39:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
