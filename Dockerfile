FROM eclipse-mosquitto:latest

# Копируем конфигурацию
COPY mosquitto.conf /mosquitto/config/mosquitto.conf

# Создаём директории
RUN mkdir -p /mosquitto/data /mosquitto/log && \
    chown -R mosquitto:mosquitto /mosquitto

# Открываем порты
EXPOSE 1883 9001

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]

