# Use your base image here, for example:
FROM alpine:3.18

# Install dependencies like sed, curl, jq, bash, etc.
RUN apk add --no-cache bash sed curl jq

# Copy your Heimdall files into the container
COPY rootfs/ /  # assuming your addon files are under rootfs/

# Copy the fix-paths script and run it
COPY fix-paths.sh /usr/local/bin/fix-paths.sh
RUN chmod +x /usr/local/bin/fix-paths.sh && /usr/local/bin/fix-paths.sh

# ...rest of your Dockerfile commands

# Set entrypoint or CMD as per your addon requirements
CMD [ "/init" ]
