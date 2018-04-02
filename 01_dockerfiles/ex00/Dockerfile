FROM alpine

RUN apk update
RUN apk upgrade
RUN apk add vim

ENTRYPOINT vim

# FROM ... tells us what image is our image based on.
#
# RUN ... takes a command as its argument and runs it form the image.
#
# apk is the tool used to install/upgrade/delete software on a running system for
#   alpine. It has has the following applets:
#       - add - adds new packages to the running system,
#       - update - updates the index of available packages,
#       - upgrade - upgrades the currently installed packages.
#
# ENTRYPOINT ... sets the concrete default application that is used every time
#   a container is created using the image. For example, if you have installed
#   a specific application inside an image and you will use this image to only
#   run that application, you can state it with ENTRYPOINT and whenever
#   a container is created from that image, your application will be the target.

# eval $(docker-machine env Char)
# docker build --tag vim Desktop/starfleet/docker-1/01_dockerfiles/ex00
# docker run -it vim
