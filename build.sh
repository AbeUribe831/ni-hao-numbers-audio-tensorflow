#!/bin/sh
# the purpose of this script is to pull the auribe/load-model image, copy the save_model dir into the host,
# then delete the conatiner and image
# then pull the image for react js image, node js api image, and synthesised audio py api image
sudo docker run auribe/load-model:1
sudo docker cp  $(sudo docker ps -aqf "ancestor=auribe/load-model"):/opt/save_model /opt/
sudo docker rm $(sudo docker ps -aqf "ancestor=auribe/load-model")
sudo docker rmi auribe/load-model
# pull the other images
#sudo docker pull auribe/ni-hao-numbers:1
#sudo docker pull auribe/load-model:1
#sudo docker pull auribe/synthesis-audio-py:1
# sudo docker cp  <container id of load-model>:/opt/save_model /opt/
# sudo docker build -t auribe/synthesis-audio-server:1 -f Dockerfile-py-server .
# sudo docker run -v /opt/save_model:/opt/save_model -it auribe/synthesis-audio-server:1
