FROM debian:stretch
RUN apt update && \
    apt install -y --no-install-recommends libz-dev make build-essential \
    git libssl1.0-dev openssl ca-certificates dpkg-dev && \
    apt clean all && rm -rf /var/apt/cache
COPY build.sh /
COPY makedeb.sh /
COPY scanpackages.sh /
RUN chmod +x /build.sh
RUN chmod +x /makedeb.sh
RUN chmod +x /scanpackages.sh
RUN mkdir /artefacts
RUN mkdir /deb
