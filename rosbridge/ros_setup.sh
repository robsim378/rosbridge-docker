source /opt/ros/noetic/setup.bash
source ros1_repeater/devel/setup.bash
export ROS_MASTER_URI=http://192.168.149.1:11311
# ROS_IP=$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')
ROS_IP=$(ifconfig | grep wlp58s0 -A 1 | grep inet | awk -F' ' '{print $2}')
