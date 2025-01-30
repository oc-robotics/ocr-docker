# Base image
FROM mwoodward6/nekton:humble

# Auto-source the workspace and cd into it
RUN echo "source /ocr/dev_ws/install/setup.bash" >> ~/.bashrc \
    && echo "cd /ocr/dev_ws" >> ~/.bashrc