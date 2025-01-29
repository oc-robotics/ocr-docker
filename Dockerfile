# Base image
# FROM tiryoh/ros2-desktop-vnc:humble
FROM --platform=$TARGETARCH tiryoh/ros2-desktop-vnc:humble
ARG TARGETARCH

RUN echo "Building for architecture: $TARGETARCH"

# Install packages
RUN apt-get update && apt-get install -y \
    && apt-get clean && rm -rf /var/lib/apt/lists/* 

# Set environment variables
# ENV DISPLAY=0

# Source the ROS installation in all interactive shells
RUN echo "source /opt/ros/humble/setup.bash >> ~/.bashrc"

# Default command
CMD ["bash"]

