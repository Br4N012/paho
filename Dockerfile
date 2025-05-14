FROM rrojano/mqtt

COPY mqtt.conf /etc/mosquitto/mosquitto.conf
#COPY certs /mosquitto/config/certs

EXPOSE 1883:1883
EXPOSE 9001:9001
#EXPOSE 443

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
