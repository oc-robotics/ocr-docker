# lightweight
FROM ros:humble-ros-core 

# Install additional a demo ROS2 package
RUN apt-get update && apt-get install -y \
    ros-humble-demo-nodes-cpp

# Source the ROS install
RUN echo "source /opt/ros/humble/setup.bash >> ~/.bashrc"

# Set the default command (demo sample)
CMD ["bash", "-c", "source /opt/ros/humble/setup.bash && ros2 launch demo_nodes_cpp talker_listener.launch.py"]


