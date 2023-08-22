## Installation Instructions

### 1 Clone COMFUZZ from Github

Please use the following command to clone our repository in your local machine. The recommended clone path is under `/root`.

```
git clone --recursive https://github.com/NWU-NISL-Fuzzing/COMFUZZ.git
```

Then move to primary work directionary.

```
cd COMFUZZ
```

### 2 Load the Docker Images and Containers

2.1 Use the following commands to setup the environment variables to avoid timeout:

```
export DOCKER_CLIENT_TIMEOUT=500
export COMPOSE_HTTP_TIMEOUT=500
```

2.2 Using the following command to run the ```./docker-compose.yml``` for starting the docker image .

```
docker-compose up -d
```

1.3 Run the following command to import the docker container.

```
docker exec -it comfuzz_container /bin/bash
```


### 2 Additional Preliminaries
In order to save the importing time for the docker container, we compressed the configured JVM compilers and the pre-trained model for JVM and JS. You can run the following command in the `COMFUZZ/COMFUZZ_js` and `COMFUZZ/COMFUZZ_Java`.

```
python step0_preparation.py
```


