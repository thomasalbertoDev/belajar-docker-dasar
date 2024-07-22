# Fungsi ini digunakan untuk menambahkan volume baru
docker volume create mongorestore

# Fungsi ini digunakan untuk melakukan restore data ke dalam volume mongorestore
docker container run --rm --name ubunturestore --mount "type=bind,source=/home/xriot/Documents/backup,destination=/backup" --mount "type=volume,source=mongorestore,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"