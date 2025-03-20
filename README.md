# ocr-docker
> [!IMPORTANT]
> 
> If you have already installed the container, skip to [Step 2: Run the docker container](#step-2-run-the-docker-container).

## Step 1: Install the container

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

- Pull the base image from Docker Hub
```bash
docker pull mwoodward6/nekton:humble
```
- Build the custom image
```bash
docker build -t ocr-docker:humble .
```

```

## Troubleshooting

### Fix "ports not available" error
- If you encounter an error due to port 6080 being in use, check which processes are using it

```bash
sudo lsof -i :6080
```

- Sample output
  
```
COMMAND    PID USER   FD   TYPE DEVICE SIZE/OFF NODE NAME
docker-pr  995 root    4u  IPv4  27629      0t0  TCP *:6080 (LISTEN)
docker-pr 1001 root    4u  IPv6  26542      0t0  TCP *:6080 (LISTEN)
```
- Stop the processes
```bash
sudo kill -9 995 1001
```


## Step 2: Run the docker container
- Start the container in the background (detached mode)
```bash
docker-compose up -d
```

- Open an interactive bash shell inside the container to run commands 
```bash
docker exec -it ocr-humble-nekton-og bash
```

- Browse http://localhost:6080/ to access the remote desktop via VNC 


- Stop the container
```bash
exit # Exit the interactive shell
docker-compose stop
```

- If you need to remove the container
```bash
docker-compose down
)
- Start the container in the background (detached mode)
```bash
docker-compose up -d
```

- Open an interactive bash shell inside the container to run commands 
```bash
docker exec -it ocr-humble-nekton-og bash
```

- Browse http://localhost:6080/ to access the remote desktop via VNC 


- Stop the container
```bash
exit # Exit the interactive shell
docker-compose stop
```

- If you need to remove the container
```bash
docker-compose down
```
