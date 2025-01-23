# Container image that runs your code
FROM alpine:3.10

# Install dependencies
RUN apk add --no-cache nodejs npm python3 py3-pip bash

# Install proselint and write-good
RUN pip3 install proselint \
  && npm install -g write-good

# Copy your entrypoint script into the container
COPY entrypoint.sh /entrypoint.sh

# Make the script executable
RUN chmod +x /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]

