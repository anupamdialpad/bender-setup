set -e
python3 -m venv bender
source bender/bin/activate
apt install buildah
apt install podman
pip install ansible
pip install ansible-bender
