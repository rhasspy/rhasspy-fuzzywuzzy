ARG BUILD_ARCH=amd64
FROM ${BUILD_ARCH}/debian:buster-slim

COPY pyinstaller/dist/* /usr/lib/rhasspyfuzzywuzzy/
COPY debian/bin/* /usr/bin/

ENTRYPOINT ["/usr/bin/rhasspy-fuzzywuzzy"]
