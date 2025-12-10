#/bin/bash

# Build variables
#IMAGE=irepo.intersystems.com/iscinternal/iris:2025.2.0.207.0
IMAGE=irepo.intersystems.com/intersystems/iris:2025.3
APACHE_URL="https://dlcdn.apache.org/httpd/httpd-2.4.66.tar.gz"
APACHE_FOLDER="httpd-2.4.66"
WEB_GATEWAY_FOLDER="WebGateway-2025.3.0.226.0-lnxubuntu2404x64"
PLATFORM="lnxubuntu2404x64"
TAG=sco-iris-wg-image:2025.3


docker build . -t $TAG --build-arg IMAGE=$IMAGE --build-arg APACHE_URL=$APACHE_URL \
    --build-arg APACHE_FOLDER=$APACHE_FOLDER \
    --build-arg WEB_GATEWAY_FOLDER=$WEB_GATEWAY_FOLDER \
    --build-arg PLATFORM=$PLATFORM


# Runtime variables
SS_PORT="-p 52771:1972"
WEB_PORT="-p 52772:8080"
# $PWD should refer to this (current) directory with the Dockerfile
BASEDIR=$PWD
VOLUME="persistent"
NAME="sco-sandbox-2025.3"
BINDMOUNT="-v $BASEDIR/$VOLUME:/$VOLUME"
DURABLESYS="-e ISC_DATA_DIRECTORY=/$VOLUME/durable"
FLAGS="--cap-add IPC_LOCK --init --detach"
KEY="--key /$VOLUME/iris.key"

# ensure mount directory exists for license key and durable SYS
mkdir persistent && chmod 777 persistent
cp iris.key persistent/iris.key

docker run --name $NAME $WEB_PORT $SS_PORT $BINDMOUNT $DURABLESYS $FLAGS $TAG $KEY

# Ordinarily starting the web server is handled by the ENTRYPOINT executable,
# but we need the ENTRYPOINT to be iris-main, so instead we call exec after
# the container is launched to start the web server and activate the CSP.conf.
#
# If you must have the web server launch in the image's init, one option is to
# create an executable that wrappers the iris-main invocation (["/tini", "--", "/iris-main"]) 
# and starts apachectl, and make that the entrypoint. Otherwise, this is simpler.
docker exec $NAME /home/irisowner/apache2/bin/apachectl -k start



