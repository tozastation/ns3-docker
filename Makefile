
build:
	#DOCKER_BUILDKIT=1
	#COMPOSE_DOCKER_CLI_BUILD=1 sudo docker-compose build
	sudo docker build -t ns3 .
run:
	#DOCKER_BUILDKIT=1
	sudo docker-compose run ns3 /bin/bash
	#sudo docker run -itd ns3 /bin/bash -v ./scratch:/research/scratch
	#$(eval ContainerId := $(sudo docker ps -qf "name=ns3Docker" -n=1))
	#sudo docker cp $(sudo docker ps -qf "name=ns3Docker" -n=1):/research/ns3 .
	#sudo docker restart ns3 -it ns3 /bin/bash -v .:/research/ns3
init:
	mkdir modules
	mkdir output
	mkdir scratch