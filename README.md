# Inception 🔮

## Description

Inception is docker compose application allow you to run a wordpress website with ssl certificate.  
This application contenarize nginx, mariadb wordpress and phpfpm with custom images.

## Requirements

Require **docker** and **sudo** privileges

## Installation

Copy the `.env.sample` into `.env` file and fill it with your credentials.  
This project use a self signed certificate to provide https run the `./add_to_host.sh` to add the site to your /etc/hosts

```bash
sudo ./add_to_host.sh && make
```

## Access

```bash
https://your_domain_name
```

## Additonal Commands

```bash
make stop # Stop the containers
```

```bash
make clean # Remove containers and volumes but keep images
```

```bash
make fclean # Remove containers volumes and images
```

```bash
make build # Start project and rebuild images
```

```bash
make down # Remove containers but keep volumes
```

## License

[MIT](https://choosealicense.com/licenses/mit/)
