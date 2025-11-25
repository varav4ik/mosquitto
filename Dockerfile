FROM eclipse-mosquitto:2

# Мини веб-сервер для Render
RUN apk add --no-cache busybox-extras

COPY mosquitto.conf /mosquitto/config/mosquitto.conf

# Стартуем http и mosquitto
CMD busybox httpd -f -p 8080 & mosquitto -c /mosquitto/config/mosquitto.conf
