## Backup manual

# Fungsi ini digunakan untuk menghentikan container yang telah dibuat
docker container stop mongovolume

# Fungsi ini digunakan untuk membuat container baru dan menerapkan container volume untuk menyimpan data ke dalam volume mongodata
docker container create --name nginxbackup --mount "type=bind,source=/home/xriot/Documents/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest

# Fungsi ini untuk menjalankan nginxbackup
docker container start nginxbackup

# Fungsi ini digunakan untuk masuk ke dalam container nginxbackup
docker container exec -i -t nginxbackup /bin/bash

# Fungsi ini digunakan untuk meng archive data ke dalam folder /backup
tar -czf /backup/backup.tar.gz /data

# Fungsi ini digunakana untuk menghentikan container nginxbackup
docker container stop nginxbackup

# Fungsi ini digunakan untuk menghapus container nginxbackup
docker container rm nginxbackup



## Backup dengan container run (contoh backup ubuntu)

# Fungsi ini digunakan untuk mengambil images ubuntu
docker image pull ubuntu:latest

# Fungsi ini digunakan untuk melakukan backup dengan container run
docker container run --rm --name ubuntubackup --mount "type=bind,source=/home/xriot/Documents/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" ubuntu:latest tar -czf /backup/backup-lagi.tar.gz /data