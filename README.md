Nginx+certbot has several issues:
 - If we use separate container for certbot, hard to reload nginx configuration (only volume with socket and signals could work)
 - Need some bootstrapping process to get certificates first time
 
Probably easies to switch to traefik.io

# certbot-docker-auto
Docker image to automatically get and renew ssl certificates using certbot and LetsEncrypt.
