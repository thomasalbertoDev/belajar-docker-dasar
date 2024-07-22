# Fungsi ini digunakan untuk menampilkan semua container yang aktif maupun yang di nonaktifkan
docker container ls -a

# Fungsi ini digunakan untuk menampilkan semua container yang aktif
docker container ls

# Fungsi ini digunakan untuk membuat container baru (Contohnya disini membuat container menggunakan image redis dengan version latest)
docker container create --name contohredis redis:latest

# Fungsi ini digunakan untuk menjalankan container yang telah dibuat
docker container start contohredis

# Fungsi ini digunakan untuk menghentikan container yang telah dibuat
docker container stop contohredis

# Fungsi ini digunakan untuk menghapus container yang telah dibuat
docker container rm contohredis