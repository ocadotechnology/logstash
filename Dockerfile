FROM logstash:2.4

USER logstash

ENTRYPOINT ["logstash"]
CMD ["--allow-env", "-f", "/config"]
