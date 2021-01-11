FROM node:12

# Install zip, curl
RUN apt-get update && \
    apt-get install -y zip && \
    apt-get install -y curl 
 
# install jq to parse json within bash scripts
RUN curl -o /usr/local/bin/jq http://stedolan.github.io/jq/download/linux64/jq && \
  chmod +x /usr/local/bin/jq
