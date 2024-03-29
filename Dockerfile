FROM node:12

# Install zip, curl
RUN apt-get update && \
    apt-get install -y zip && \
    apt-get install -y curl && \
    apt-get install -y gettext-base && \
    apt-get install -y python3-pip
 
# install jq to parse json within bash scripts
RUN curl -o /usr/local/bin/jq http://stedolan.github.io/jq/download/linux64/jq && \
  chmod +x /usr/local/bin/jq
  
# instal awscli
RUN pip3 install -U awscli 
