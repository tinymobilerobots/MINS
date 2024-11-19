FROM ros:noetic-perception-focal
RUN apt update && apt install python3-catkin-tools nano -y
COPY . /catkin_ws/src/MINS
RUN /bin/bash -c "chmod +x /opt/ros/noetic/setup.sh && source /opt/ros/noetic/setup.sh && catkin build -j4 --workspace /catkin_ws"

WORKDIR /catkin_ws
ENTRYPOINT [ "/bin/bash", "-l", "-c" ]
