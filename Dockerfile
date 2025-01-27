# Base image
# FROM osrf/ros:humble-desktop
FROM tiryoh/ros2-desktop-vnc:humble

# Install packages
RUN apt-get update && apt-get install -y \
    ros-humble-gazebo-ros-pkgs \
    && apt-get clean && rm -rf /var/lib/apt/lists/* \

# Set environment variables
# ENV DISPLAY=0

# Source the ROS installation in all interactive shells
RUN echo "source /opt/ros/humble/setup.bash >> ~/.bashrc"

# Default command
CMD ["bash"]