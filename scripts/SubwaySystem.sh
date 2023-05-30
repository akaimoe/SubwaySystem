#!/bin/bash

PROJ_ROOT_DIR="/home/altair/item/SubwaySystem"

chmod -R 777 $PROJ_ROOT_DIR

cd $PROJ_ROOT_DIR

source devel/setup.bash

roslaunch launch/SubwaySystem.launch