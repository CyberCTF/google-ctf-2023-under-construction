# The database of Under Construction. Upstream runs the stock `mysql:8` image from its challenge.yaml
# (a Kubernetes Deployment with env and a secret). This overlay pins it to 8.0.33 (the current 8.0
# release at Google CTF 2023) and bakes in the same environment, since Isoloom has no per-machine
# environment.
FROM mysql:8.0.33
ENV MYSQL_USER=forge \
    MYSQL_PASSWORD=Ah9LUPhPEknU7jceKW4ya9Hwek4GrpLmzYFCgnL1lYg \
    MYSQL_DATABASE=forge \
    MYSQL_RANDOM_ROOT_PASSWORD=1
