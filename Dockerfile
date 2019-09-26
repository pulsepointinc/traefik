FROM alpine:3.6
RUN apk --no-cache add ca-certificates libc6-compat 
COPY "dist/*"  "/"
EXPOSE 80
ENTRYPOINT ["/entrypoint.sh"]
CMD ["traefik"]

# Metadata
LABEL org.label-schema.vendor="PulsePoint" \
      org.label-schema.url="https://traefik.io" \
      org.label-schema.name="Traefik" \
      org.label-schema.description="A modern reverse-proxy" \
      org.label-schema.version="v1.5.4.1_pp" \
      org.label-schema.docker.schema-version="1.0"