#!/bin/bash

DOCKERFILE=../DOCKER/SIMULATOR/Dockerfile
IMG_NAME="simulator_and_clean_img"
IMG_RET=`docker images | grep $IMG_NAME`
TARGET=$1

function build_docker_image()
{
    if [ "$IMG_RET" = "" ]; then
        echo "$IMG_NAME: Image does not exist. It should be generated"
        docker build -f $DOCKERFILE -t $IMG_NAME .
    else 
        echo "$IMG_NAME is exist."
    fi;
}

function run_build_in_docker()
{
    if [ "$TARGET" == "simulator" ] || [ "$TARGET" == "clean" ]; then
        docker run -ti --rm -v "$(pwd)/../":/work/Dev $IMG_NAME /bin/bash -c "cd Dev; make -f application.mk $TARGET"
    else   
        echo "Invaldi argument exception"
        exit
    fi;
}


#Main: 
build_docker_image
run_build_in_docker