# Fungsi ini digunakan untuk membuat container baru dengan nama mongodata kemudian melakukan port forwarding 27018:27017 dan mengirimkan variable MONGO_INITDB_ROOT_USERNAME dan MONGO_INITDB_ROOT_PASSWORD dengan menggunakan bind mount ke dalam folder /home/xriot/Documents/docker-data dengan mount type bind
docker container create --name mongodata --publish 27018:27017 --mount "type=bind,source=/home/xriot/Documents/docker-data,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=example mongo:latest

