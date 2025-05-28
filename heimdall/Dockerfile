# Start from a minimal base image with bash and required tools
FROM alpine:3.18

# Install dependencies
RUN apk add --no-cache \
    bash \
    curl \
    jq \
    sed \
    nginx \
    php8 \
    php8-fpm \
    php8-curl \
    php8-json \
    php8-phar \
    php8-iconv \
    php8-openssl \
    php8-common \
    php8-cli

# Copy addon files (adjust the source path if needed)
COPY rootfs/ /

# Copy the fix-paths.sh script into the container
COPY fix-paths.sh /usr/local/bin/fix-paths.sh

# Make it executable and run it to fix config paths
RUN chmod +x /usr/local/bin/fix-paths.sh && /usr/local/bin/fix-paths.sh

# Expose any ports your addon listens on (example: 80 for nginx)
EXPOSE 80

# Define the init command for the container (adjust if your addon uses a specific entrypoint)
CMD [ "/init" ]
