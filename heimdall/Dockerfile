FROM alpine:3.18

# Add community repository for additional packages
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories

# Update package index and install necessary packages
RUN apk update && apk add --no-cache \
    bash \
    curl \
    jq \
    sed \
    nginx \
    php8 \
    php8-fpm \
    php8-openssl \
    php8-pdo \
    php8-pdo_sqlite \
    php8-mbstring \
    php8-tokenizer \
    php8-xml \
    php8-zip \
    php8-session \
    php8-json \
    php8-cli \
    sqlite

# Copy application files
COPY rootfs/ /

# Copy and execute the fix-paths.sh script
COPY fix-paths.sh /usr/local/bin/fix-paths.sh
RUN chmod +x /usr/local/bin/fix-paths.sh && /usr/local/bin/fix-paths.sh

# Expose necessary ports
EXPOSE 80

# Set the default command
CMD [ "/init" ]
