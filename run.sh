#!/bin/sh
pwd=$(pwd)
source ${pwd}/conf/config.sh

docker rm ${CONTAINER_NAME}
docker run -it --name ${CONTAINER_NAME} -v ${SRC_HOST_DIR}:/DATA/app --privileged=true ${IMAGE_NAME}
docker logs -f ${CONTAINER_NAME}
