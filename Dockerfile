FROM certbot/certbot:v2.11.0

RUN python3 -m pip install certbot-dns-websupport-v2==1.0.1