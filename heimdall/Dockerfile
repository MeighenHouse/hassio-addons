FROM alpine:3.18

# Install necessary packages
RUN apk add --no-cache \
    php8 \
    php8-fpm \
    php8-openssl \
    php8-pdo_sqlite \
    php8-mbstring \
    php8-tokenizer \
    php8-xml \
    php8-zip \
    php8-session \
    php8-json \
    php8-cli \
    nginx \
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
