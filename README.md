# libvirt-docker
## Running
```
docker run -d \
  --name libvirt \
  -v /var/run/libvirt/libvirt-sock:/var/run/libvirt/libvirt-sock:ro \
  -p 8080:8080 \
  ghcr.io/jadams/libvirt-docker:latest
```
