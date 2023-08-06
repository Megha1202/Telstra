C:\Users\91911\docker_prog>Docker build -t bushan1992/docker-helloworld .
[+] Building 0.3s (2/3)                                                                                                                                                                             docker:default
[+] Building 10.4s (9/9) FINISHED                                                                                                                                                                   docker:default
 => [internal] load build definition from Dockerfile                                                                                                                                                          0.2s
 => => transferring dockerfile: 124B                                                                                                                                                                          0.0s
 => [internal] load .dockerignore                                                                                                                                                                             0.2s
 => => transferring context: 2B                                                                                                                                                                               0.0s
 => [internal] load metadata for docker.io/library/openjdk:8                                                                                                                                                  2.7s
 => [1/4] FROM docker.io/library/openjdk:8@sha256:86e863cc57215cfb181bd319736d0baf625fe8f150577f9eb58bd937f5452cb8                                                                                            0.0s
 => [internal] load build context                                                                                                                                                                             0.1s
 => => transferring context: 248B                                                                                                                                                                             0.0s
 => CACHED [2/4] WORKDIR /app                                                                                                                                                                                 0.0s
 => [3/4] COPY . /app/                                                                                                                                                                                        0.4s
 => [4/4] RUN javac f1.java                                                                                                                                                                                   3.8s
 => exporting to image                                                                                                                                                                                        1.1s
 => => exporting layers                                                                                                                                                                                       0.8s
 => => writing image sha256:8389a50d6d9189bd442e67530036fffd9c0fea89ef71f9b43af19abcb7ee76d5                                                                                                                  0.0s
 => => naming to docker.io/bushan1992/docker-helloworld                                                                                                                                                       0.3s

What's Next?
  View summary of image vulnerabilities and recommendations → docker scout quickview

C:\Users\91911\docker_prog>docker run bushan1992/docker-helloworld .
Hello World

C:\Users\91911\docker_prog>docker images
REPOSITORY                     TAG       IMAGE ID       CREATED             SIZE
bushan1992/docker-helloworld   latest    8389a50d6d91   3 minutes ago       526MB
<none>                         <none>    f4c8be7da4a1   About an hour ago   526MB
docker/welcome-to-docker       latest    912b66cfd46e   6 weeks ago         13.4MB

C:\Users\91911\docker_prog>docker ps
CONTAINER ID   IMAGE                             COMMAND                  CREATED        STATUS        PORTS                  NAMES
6194d4916b33   docker/welcome-to-docker:latest   "/docker-entrypoint.…"   47 hours ago   Up 47 hours   0.0.0.0:8088->80/tcp   welcome-to-docker

C:\Users\91911\docker_prog>docker ps -a
CONTAINER ID   IMAGE                             COMMAND                  CREATED         STATUS                     PORTS                  NAMES
4fb87022a8ac   bushan1992/docker-helloworld      "java f1 ."              5 minutes ago   Exited (0) 5 minutes ago                          festive_cartwright
68995cd3d62b   bushan1992/docker-helloworld      "java f1"                7 minutes ago   Exited (0) 6 minutes ago                          quirky_colden
6194d4916b33   docker/welcome-to-docker:latest   "/docker-entrypoint.…"   47 hours ago    Up 47 hours                0.0.0.0:8088->80/tcp   welcome-to-docker

C:\Users\91911\docker_prog>docker start 4fb87022a8ac
4fb87022a8ac

C:\Users\91911\docker_prog>docker ps
CONTAINER ID   IMAGE                             COMMAND                  CREATED        STATUS        PORTS                  NAMES
6194d4916b33   docker/welcome-to-docker:latest   "/docker-entrypoint.…"   47 hours ago   Up 47 hours   0.0.0.0:8088->80/tcp   welcome-to-docker




