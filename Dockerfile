FROM logstash:2.4

USER logstash

COPY input.conf  /config/input.conf
COPY output.conf /config/output.conf

ENTRYPOINT ["logstash"]
CMD ["--allow-env", "-f", "/config"]
