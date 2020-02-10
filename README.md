
## Requirements

Docker, Docker-compose, openssl

## How to use?

It should be relatively easy to reproduce:

### 1. Create CA
Run 
```sh
./create_ca.sh
```

### 2. Create and sign Certificates for nginx
Run 
```sh
./issue_cert.sh
```
This also adds the virtual box magic IP "10.0.2.2" as a subjectAltName to the certificate

### 3. build nginx and start up the network
```sh
docker-compose build && docker-compose up
```
