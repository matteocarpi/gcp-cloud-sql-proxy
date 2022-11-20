# Dockerfile
FROM alpine

COPY entrypoint.sh /opt/entrypoint.sh

ENV SERVICE_ACCOUNT ""
ENV CI_PIPELINE_ID ""

ENTRYPOINT [ "/opt/entrypoint.sh" ]