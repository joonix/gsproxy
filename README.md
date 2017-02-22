# Google Cloud Storage Proxy

This is a simple proxy for serving Google Cloud storage through any other loadbalancer,
for example through a Container Engine ingress configuration which might rely on letsencrypt and other path maps.

The docker image is publicly available as `joonix/gsproxy`.

## Environment variables

**BUCKET**: Set this to the bucket that we should proxy to.

