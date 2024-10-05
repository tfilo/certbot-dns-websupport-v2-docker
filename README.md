# Docker image for Certbot Authenticator plugin for Websupport REST API v2

Repository with plugin source code: [certbot-dns-websupport-v2](https://github.com/tfilo/certbot-dns-websupport-v2).

This repository provides easy way to use [Certbot](https://certbot.eff.org/) with plugin for dns-01 challenge against Websupport [REST API v2](https://rest.websupport.sk/v2/docs).

Example how to run this plugin:

```BASH
docker run -it --rm --name certbot \
    -v "./volumes/config:/etc/letsencrypt:rw" \
    -v "./volumes/work:/var/lib/letsencrypt:rw" \
    -v "./volumes/log:/var/log/letsencrypt:rw" \
    -v "./volumes/websupport.ini:/websupport.ini:ro" \
    tfilo/certbot-dns-websupport-v2:latest \
    certonly --dns-websupport-v2-credentials /websupport.ini -d *.YOUR_DOMAIN.sk --authenticator dns-websupport-v2
```

This docker image extends [official certbot image](https://hub.docker.com/r/certbot/certbot) licensed under Apache License Version 2.0 and adds my custom plugin for dns challenge against Websupport REST API.