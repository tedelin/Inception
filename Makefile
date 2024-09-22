NAME=inception
COMPOSE_FILE=srcs/docker-compose.yml

all:
	@mkdir -p ~/data/wordpress ~/data/mariadb
	docker compose -p $(NAME) -f $(COMPOSE_FILE) up -d
	
stop:
	docker compose -p $(NAME) -f $(COMPOSE_FILE) stop

down:
	docker compose -p $(NAME) -f $(COMPOSE_FILE) down

build:
	@mkdir -p ~/data/wordpress ~/data/mariadb
	docker compose -p $(NAME) -f $(COMPOSE_FILE) up --build -d

clean:
	@sudo rm -rf ~/data/wordpress ~/data/mariadb
	docker compose -p $(NAME) -f $(COMPOSE_FILE) down --volumes --remove-orphans

fclean: clean
	docker system prune -af

re: fclean all