docker.build:
	docker build -t cluster.com .

docker.run:
	docker-compose up -d

docker.bash:
	docker exec -it cluster.com bash