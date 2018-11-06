# Create LVM partition and mount it:

## Physical volume
``` bash
linux-9vfo:/home/domi # pvcreate /dev/sda4
  Physical volume "/dev/sda4" successfully created.
linux-9vfo:/home/domi # 
linux-9vfo:/home/domi # 
linux-9vfo:/home/domi # pvdisplay
  "/dev/sda4" is a new physical volume of "5.28 GiB"
  --- NEW Physical volume ---
  PV Name               /dev/sda4
  VG Name               
  PV Size               5.28 GiB
  Allocatable           NO
  PE Size               0   
  Total PE              0
  Free PE               0
  Allocated PE          0
  PV UUID               z332Xh-zdBh-qIvL-VFw4-Ee7r-QuF7-SlnXZO
   
linux-9vfo:/home/domi # pvscan
  PV /dev/sda4                      lvm2 [5.28 GiB]
  Total: 1 [5.28 GiB] / in use: 0 [0   ] / in no VG: 1 [5.28 GiB]
```

## Volume group
``` bash
linux-9vfo:/home/domi # vgcreate vg1 /dev/sda4 
  Volume group "vg1" successfully created
```

## Logical volume
``` bash
linux-9vfo:/home/domi # lvcreate -n lv1 -l 100%FREE vg1
  Logical volume "lv1" created.
linux-9vfo:/home/domi # lvdisplay 
  --- Logical volume ---
  LV Path                /dev/vg1/lv1
  LV Name                lv1
  VG Name                vg1
  LV UUID                SqUzex-w5G1-39HG-vrqW-lWwf-bG53-t7nsoA
  LV Write Access        read/write
  LV Creation host, time linux-9vfo, 2018-11-06 08:06:12 +0100
  LV Status              available
  # open                 0
  LV Size                5.28 GiB
  Current LE             1352
  Segments               1
  Allocation             inherit
  Read ahead sectors     auto
  - currently set to     1024
  Block device           254:0
```

## Format partition
``` bash
linux-9vfo:/home/domi # mkfs.ext4 /dev/vg1/lv1 
mke2fs 1.43.8 (1-Jan-2018)
Creating filesystem with 1384448 4k blocks and 346752 inodes
Filesystem UUID: e9ae99ae-1685-420d-acaa-cd9c6f9fef00
Superblock backups stored on blocks: 
	32768, 98304, 163840, 229376, 294912, 819200, 884736

Allocating group tables: done                            
Writing inode tables: done                            
Creating journal (16384 blocks): done
Writing superblocks and filesystem accounting information: done 
```

## fstab
``` bash
/dev/vg1/lv1 /mnt/lv1 ext4 defaults 1 2
```

## Mount and change owner
``` bash
sudo mkdir /mnt/lv1
sudo mount /mnt/lv1
sudo chown jimmy:users /mnt/lv1
```

