# Fungsi ini digunakan untuk masuk ke dalam container yang telah dibuat dan digunakan untuk mengeksekusi perintah bash / kode program yang telah dibuat
docker container exec -i -t contohredis /bin/bash

# Fungsi ini digunakan untuk mengeksekusi perintah redis-cli
redis-cli

# Fungsi ini digunakan untuk mengeksekusi perintah set dan memasukkan key beserta value nya
set mykey myvalue

# Fungsi ini digunakan untuk mengeksekusi perintah get dan menampilkan value dari key mykey
get mykey