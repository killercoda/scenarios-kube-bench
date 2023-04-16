#!/bin/bash

# init scenario
rm $0
bash /ks/k8s.sh
mkdir -p /opt/ks
cat <<EOT > /root/.vimrc
set expandtab
set tabstop=2
set shiftwidth=2
EOT


# scenario specific
wget https://github.com/aquasecurity/kube-bench/releases/download/v0.6.5/kube-bench_0.6.5_linux_amd64.deb
dpkg -i kube-bench_0.6.5_linux_amd64.deb
rm kube-bench_0.6.5_linux_amd64.deb
chgrp ubuntu /etc/kubernetes/pki/


# mark init finished
touch /ks/.initfinished
