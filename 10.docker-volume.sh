# Volume merupakan sebuah folder yang dapat digunakan untuk menyimpan data secara terpisah dari container dan ini merupakan best practice untuk menyimpan data dibandingkan menggunakan bind mount.

# Fungsi ini digunakan untuk menampilkan semua volume yang ada
docker volume ls

# Fungsi ini digunakan untuk membuat volume baru
docker volume create mongovolume

# Fungsi ini digunakan untuk menghapus volume yang telah dibuat
docker volume rm mongovolume

# Fungsi ini digunakan untuk mengecek volume yang telah dibuat
docker volume inspect mongovolume

