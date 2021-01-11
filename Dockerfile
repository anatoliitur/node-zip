FROM node:12

# Install zip
RUN apt-get update && \
    apt-get install -y zip
