FROM logstash:2.4

USER logstash

COPY input.conf  /config
COPY output.conf /config

ENTRYPOINT ["logstash"]
CMD ["--allow-env", "-f", "/config"]
