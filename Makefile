NAME=inception
COMPOSE_FILE=srcs/docker-compose.yml

all:
	mkdir -p wordpress mariadb
	docker compose -p $(NAME) -f $(COMPOSE_FILE) up -d

build:
	mkdir -p wordpress mariadb
	docker compose -p $(NAME) -f $(COMPOSE_FILE) up --build -d

fclean:
	sudo rm -rf wordpress mariadb
	docker compose -p $(NAME) -f $(COMPOSE_FILE) down --volumes --remove-orphans

re: fclean all