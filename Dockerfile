# Dockerfile
FROM alpine

COPY entrypoint.sh /opt/entrypoint.sh

ENV DUMMY_VAR "some-file"

ENTRYPOINT [ "/opt/entrypoint.sh" ]