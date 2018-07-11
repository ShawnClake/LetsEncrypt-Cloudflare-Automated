FROM certbot/dns-cloudflare

COPY cloudflare.ini src/certbot-dns-cloudflare/

RUN mkdir -p /certs

ENTRYPOINT certbot certonly --dns-cloudflare --dns-cloudflare-credentials src/certbot-dns-cloudflare/cloudflare.ini --dns-cloudflare-propagation-seconds 60 --agree-tos -d ${DOMAINS} --expand -q --keep-until-expiring --renew-with-new-domains --allow-subset-of-names --no-self-upgrade --no-bootstrap --rsa-key-size 4096 --cert-path /certs --key-path /certs --fullchain-path /certs --chain-path /certs --no-redirect --email admin@nopatience.net