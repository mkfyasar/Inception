all:
	mkdir -p /home/myasar/data /home/myasar/data/mysql /home/myasar/data/wordpress
	docker-compose -f ./srcs/docker-compose.yml up --build -d
down:
	docker-compose -f ./srcs/docker-compose.yml down
clean: down
	docker system prune -a
	docker volume rm $$(docker volume ls -q)
	rm -rf /home/myasar/data
re: clean all

.PHONY: all down clean re