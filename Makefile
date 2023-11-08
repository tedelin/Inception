NAME=inception
COMPOSE_FILE=srcs/docker-compose.yml

all:
	@mkdir -p wordpress mariadb
	docker compose -p $(NAME) -f $(COMPOSE_FILE) up -d

down:
	docker compose -p $(NAME) -f $(COMPOSE_FILE) down

build:
	@mkdir -p wordpress mariadb
	docker compose -p $(NAME) -f $(COMPOSE_FILE) up --build -d

clean:
	@sudo rm -rf wordpress mariadb
	docker compose -p $(NAME) -f $(COMPOSE_FILE) down --volumes --remove-orphans

fclean: clean
	docker system prune -af

re: fclean all