#!/usr/bin/env bash
docker run -it --rm --name letsencrypt-cloudflare-automated -v ssl/letsencrypt:/etc/letsencrypt -v ssl/lib/letsencrypt:/var/lib/letsencrypt -v ssl/certs:/certs -v config:/config -e DOMAINS="" shawnclake/letsencrypt-cloudflare-automated 
