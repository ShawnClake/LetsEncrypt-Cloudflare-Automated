FROM certbot/dns-cloudflare

RUN mkdir -p /certs

ENTRYPOINT certbot certonly --dns-cloudflare --dns-cloudflare-credentials /config/cloudflare.ini --dns-cloudflare-propagation-seconds 10 --agree-tos -d ${DOMAINS} --expand -q --keep-until-expiring --renew-with-new-domains --allow-subset-of-names --no-self-upgrade --no-bootstrap --rsa-key-size 4096 --no-redirect --email admin@nopatience.net && cp -rf /etc/letsencrypt/live/* /certs