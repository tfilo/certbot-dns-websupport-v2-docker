#!/bin/bash

docker run -it --rm --name certbot \
    -v "./volumes/config:/etc/letsencrypt:rw" \
    -v "./volumes/work:/var/lib/letsencrypt:rw" \
    -v "./volumes/log:/var/log/letsencrypt:rw" \
    -v "./volumes/websupport.ini:/websupport.ini:ro" \
    tfilo/certbot-dns-websupport-v2:latest \
    certonly --dns-websupport-v2-credentials /websupport.ini -d *.YOUR_DOMAIN.sk --authenticator dns-websupport-v2

