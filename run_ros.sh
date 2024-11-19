#xhost +local:docker

docker stop mins
docker rm mins

docker run -it --rm \
--net=host --privileged -v /dev:/dev \
--name mins \
--env ROS_IP=$ROS_IP \
--env ROS_MASTER_URI=$ROS_MASTER_URI \
mins bash #"source /opt/ros/noetic/setup.bash && source devel/setup.bash" #&& roslaunch mins tmr.launch"
