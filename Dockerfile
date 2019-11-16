FROM bitnami/minideb:stretch
RUN apt update && apt install \
    openssl \
    libpq5 \
    curl \
    -y

ADD binaries/server /usr/bin/
ADD binaries/bndb_cli /usr/bin/
ADD binaries/api-cli /usr/bin/

CMD ["server"]
