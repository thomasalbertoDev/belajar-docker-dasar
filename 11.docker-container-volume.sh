# Fungsi ini digunakan untuk menambahkan volume baru
docker volume create mongodata

# Fungsi ini digunakan untuk menambah container baru dan menerapkan container volume untuk menyimpan data ke dalam volume mongodata
docker container create --name mongovalue --publish 27019:27017 --mount "type=volume,source=mongodata,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=example mongo:latest
