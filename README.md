# Cinema-Docker-App
It's a simple website with several microservices developed with:  
```
docker, php, ajax, jquery, javascript.
```
The architecture is :
![GitHub Logo](Architecture.png)


I developed from scratch:  
* Web-App
* Application-Logic  
* Data-Storage

## Compilation
You need to have already installed only docker and docker-compose.\
Go to the downloaded folder:
* `sudo docker compose up -d`
* open a terminal: 
  * ` sudo docker exec -it mysql_db mysql -u root -p `
  * `GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'root_pass'; `
  * `FLUSH PRIVILEGES;`
  * `exit;`
* `sudo docker-compose down`
* `sudo docker-compose up -d`
* open your browser in : http://localhost:4040/
  * username : `root`
  * password : `root_pass`
  * `drop database idm`
  * `create database idm`
  * import from backups folder `idm.sql`
