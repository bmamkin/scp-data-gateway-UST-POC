#/bin/bash

# Build variables
IMAGE=containers.intersystems.com/intersystems/iris:2023.3
APACHE_URL="https://dlcdn.apache.org/httpd/httpd-2.4.58.tar.gz"
APACHE_FOLDER="httpd-2.4.58"
WEB_GATEWAY_FOLDER="WebGateway-2023.3.0.254.0-lnxubuntu2204x64"
PLATFORM="lnxubuntu2204x64"
TAG=sco-iris-wg-image:2023.3


docker build . -t $TAG --build-arg IMAGE=$IMAGE --build-arg APACHE_URL=$APACHE_URL \
    --build-arg APACHE_FOLDER=$APACHE_FOLDER \
    --build-arg WEB_GATEWAY_FOLDER=$WEB_GATEWAY_FOLDER \
    --build-arg PLATFORM=$PLATFORM


# Runtime variables
SS_PORT="-p 5551:1972"
WEB_PORT="-p 5552:8080"
# $PWD should refer to this (current) directory with the Dockerfile
BASEDIR=$PWD
VOLUME="Persistent"
NAME="sco-sandbox"
BINDMOUNT="-v $BASEDIR/$VOLUME:/$VOLUME"
DURABLESYS="-e ISC_DATA_DIRECTORY=/$VOLUME/durable"
FLAGS="--cap-add IPC_LOCK --init --detach"
KEY="--key /$VOLUME/iris.key"

# ensure mount directory exists for license key and durable SYS
mkdir Persistent && chmod 777 Persistent
cp iris.key Persistent/iris.key

docker run --name $NAME $WEB_PORT $SS_PORT $BINDMOUNT $DURABLESYS $FLAGS $TAG $KEY

# Ordinarily starting the web server is handled by the ENTRYPOINT executable,
# but we need the ENTRYPOINT to be iris-main, so instead we call exec after
# the container is launched to start the web server and activate the CSP.conf.
#
# If you must have the web server launch in the image's init, one option is to
# create an executable that wrappers the iris-main invocation (["/tini", "--", "/iris-main"]) 
# and starts apachectl, and make that the entrypoint. Otherwise, this is simpler.
docker exec $NAME /home/irisowner/apache2/bin/apachectl -k start



