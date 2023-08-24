# Ansible Bender Setup
```bash
bash setup.sh # tested on debian 11
buildah login  -u _json_key -p "$(cat key.json)" gcr.io
```
### Pull image
Images are available in `https://console.cloud.google.com/gcr/images/<project>?project=<project>`
```bash
buildah pull gcr.io/<project>/debian-bullseye-with-python:latest
```
### Build an image
```bash
source bender/bin/activate
ansible-bender build --no-cache play.yaml <image-name>:<tag> <target-image-name>
```
### Exec into an image
```
podman run -it <image-id> bash
```
### Delete images
```bash
buildah rmi -p
buildah images --noheading | grep prober-py3 | awk '{print $3}' | xargs buildah rmi
```

