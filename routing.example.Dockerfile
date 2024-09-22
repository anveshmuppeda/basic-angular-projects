# Set the base image to Debian (latest version)
# Official Debian image from Docker Hub: https://hub.docker.com/_/debian/
FROM debian:latest

# Replace default shell with bash for better scripting capabilities
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# Update the package lists and install curl (needed for downloading NVM)
# Clean up the package cache to reduce image size
RUN apt-get update \
    && apt-get install -y curl \
    && apt-get -y autoclean

# Create a directory for NVM (Node Version Manager)
RUN mkdir /usr/local/nvm

# Set environment variables for NVM directory
ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION 18.20.4

# Download and install NVM (Node Version Manager)
# Install the specified version of Node.js using NVM
# Set the installed Node.js version as default and globally install Angular CLI
RUN curl https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash \
    && . $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default \
    && npm install -g @angular/cli

# Configure environment variables for Node.js and NPM
# This ensures Node and NPM are available globally in the container
ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

# Set the working directory inside the container to /app
# This is where we will copy the Angular project
WORKDIR /app

# Copy the Angular project (hello-world) from the local file system into the container
# The project is assumed to be in the build context (same directory as this Dockerfile)
COPY ./routing-example ./routing-example

# Change the working directory to the Angular project directory inside the container
WORKDIR /app/routing-example

# Install the Angular project's dependencies inside the container
# This ensures all the Node.js modules are installed before running the app
RUN npm install

# Expose port 4200 to make the Angular app accessible outside the container
EXPOSE 4200

# By default, start the Angular application using `ng serve`
# --host 0.0.0.0 makes the app accessible from outside the container
CMD ["ng", "serve", "--host", "0.0.0.0"]