# ocr-docker

## Installation

- Install and open [Docker Desktop](https://docs.docker.com/desktop/)

- Clone the repo and cd into it

```bash
cd ocr
git clone https://github.com/oc-robotics/ocr-docker.git
cd ocr-docker
```

- Make sure the volume is mounted correctly in `docker-compose.yml`
    - The default path assumes the following file structure

```
~/ocr/
│
├── dev_ws/
│   ├── build/
│   ├── install/
│   ├── log/
│   └── src/
│       └── differential_drive_robot/
│
├── ocr-docker/
│   ├── Dockerfile
│   ├── README.md
│   └── docker-compose.yml
│
└── training_ws/
```

- Pull the image from Docker Hub
```bash
docker pull chxtiodev/ocr-docker:humble
```

## Run the docker container
- Run the container in detached mode
```bash
docker-compose up -d
```

- Open an interactive bash shell inside the container to run commands 
```bash
docker exec -it ocr-humble-nekton bash
```

- Browse http://localhost:6080/ to access the remote desktop via VNC 