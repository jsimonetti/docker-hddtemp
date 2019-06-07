FROM debian:stable-slim

# Install hddtemp
RUN apt update && apt -y install hddtemp && apt-get clean && rm -rf /var/cache/apt/*

EXPOSE 7634
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

