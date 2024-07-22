# Fungsi ini digunakan untuk mengambil image docker yang telah dibuat
docker image pull mongo:latest

# Fungsi ini digunakan untuk membuat container baru (Contohnya disini membuat container menggunakan image mongo dengan version latest) dan menerapkan port forwading 27017:27017 dan mengirimkan variable MONGO_INITDB_ROOT_USERNAME dan MONGO_INITDB_ROOT_PASSWORD
docker container create --name contohmongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=example mongo:latest