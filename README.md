# redis-sentinel-docker
This repo creates a simple redis sentinel setup for use in testing or local development
NOT FOR PRODUCTION USE

## Use
pull container from https://hub.docker.com/r/ankur/redis-sentinel
```
docker pull ankur/redis-sentinel
```
just use the container directly, it will create a cluster with name `redis-cluster`

## Ports
Redis nodes on ports `7000, 7001, 7002`
Sentinel nodes on ports `5000, 5001, 5002`

## Different IP
By default redis nodes use 127.0.0.1 as address to register each other.
This could be changes by setting environment variable `EXTERNAL_IP` for the container
