# Set the base image to Ubuntu
FROM ubuntu

# File Author / Maintainer
MAINTAINER Matt Duffield

# Install Mosquitto
RUN sudo apt-get install -y software-properties-common && \
    sudo apt-add-repository ppa:mosquitto-dev/mosquitto-ppa && \
    sudo apt-get update && \
    sudo apt-get install -y mosquitto

# Expose port
EXPOSE 1883

# Run app using node
CMD ["mosquitto"]

