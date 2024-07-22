# Fungsi ini digunakan untuk membuat network baru
docker network create --driver bridge mongonetwork

# Fungsi ini digunakan untuk membuat container dengan network
docker container create --name mongodb --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=example mongo:latest

# Fungsi ini digunakan untuk mengambil image docker yang telah dibuat yaitu mongo-express
docker image pull mongo-express:latest

# Fungsi ini digunakan untuk membuat container dengan network
docker container create --name mongodb-express --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://root:example@mongo:27017/" mongo-express:latest

# Fungsi ini digunakan untuk menjalankan container yang telah d ibuat (mongodb dan mongodb-express)
docker container start mongodb
docker container start mongodb-express

# Fungsi ini digunakan untuk menghapus container dari network
docker network disconnect mongonetwork mongodb

# Fungsi ini digunakan untuk menambahkan container ke network
docker network connect mongonetwork mongodb