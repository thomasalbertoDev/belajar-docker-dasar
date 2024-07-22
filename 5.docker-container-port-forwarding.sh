
# Fungsi ini digunakan untuk mengeksekusi port forwarding (lebih jelasnya adalah port 8080 (merupakan port default nginx) di forward / dimajukan ke port 80 (merupakan port default container))
docker container create --name contohnginx --publish 8080:80 nginx:latest