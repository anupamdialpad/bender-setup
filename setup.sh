set -e
python3 -m venv bender
source bender/bin/activate
apt install -y buildah podman
pip install ansible ansible-bender
