#!/usr/bin/env bash
docker run -it --rm --name letsencrypt-cloudflare-automated -v /home/project/ssl/letsencrypt:/etc/letsencrypt -v /home/project/ssl/lib/letsencrypt:/var/lib/letsencrypt -v /home/project/ssl/certs:/certs -v /home/project/config:/config -e DOMAINS="" shawnclake/letsencrypt-cloudflare-automated 
