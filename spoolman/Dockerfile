FROM ghcr.io/donkie/spoolman:latest

USER root

# Install bash for HA supervisor runner
RUN apt-get update && apt-get install -y --no-install-recommends bash && rm -rf /var/lib/apt/lists/*

COPY run.sh /run.sh
RUN chmod +x /run.sh

EXPOSE 8000

ENTRYPOINT ["/run.sh"]
