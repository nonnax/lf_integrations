#!/usr/bin/env mruby
# Id$ nonnax 2023-02-18 21:14:15
# NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
# sda      8:0    0   1.8T  0 disk
# ├─sda1   8:1    0   512M  0 part
# ├─sda2   8:2    0   891G  0 part /home
# ├─sda3   8:3    0   7.2G  0 part
# ├─sda4   8:4    0 839.5G  0 part
# ├─sda5   8:5    0     1M  0 part
# ├─sda6   8:6    0  93.1G  0 part /
# └─sda7   8:7    0  31.7G  0 part
# sdb      8:16   0 931.5G  0 disk
# ├─sdb1   8:17   0   512M  0 part
# ├─sdb2   8:18   0     1K  0 part
# ├─sdb3   8:19   0  41.5G  0 part
# ├─sdb5   8:21   0 441.5G  0 part
# └─sdb6   8:22   0   440G  0 part

# ├─sda1   8:1    0   512M  0 part
# ├─sda2   8:2    0   891G  0 part /home
# ├─sda3   8:3    0   7.2G  0 part
# ├─sda4   8:4    0 839.5G  0 part
# ├─sda5   8:5    0     1M  0 part
# ├─sda6   8:6    0  93.1G  0 part /
# └─sda7   8:7    0  31.7G  0 part
# sdb      8:16   0 931.5G  0 disk
# ├─sdb1   8:17   0   512M  0 part
# ├─sdb2   8:18   0     1K  0 part
# ├─sdb3   8:19   0  41.5G  0 part
# ├─sdb5   8:21   0 441.5G  0 part
# └─sdb6   8:22   0   440G  0 part

%w[sda4 sda7 sdb3 sdb5 sdb6 sdc1]
.map do |name|
  cmd=format "udisksctl mount -b /dev/%s", name
end
.map{|cmd|
 begin
 IO.popen(cmd, &:read)
 rescue
  next
 end
}
