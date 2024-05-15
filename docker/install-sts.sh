sudo apt-get install -y \
    wget \
    build-essential \
    git \
    mercurial \
    rsync \
    unzip


# install go lang
sudo cp install-go.sh /tmp/
sudo sh /tmp/install-go.sh

sudo sh install-terrain-server.sh