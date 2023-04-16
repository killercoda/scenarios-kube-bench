#!/bin/bash

sed -i 's/- kube-apiserver/- kube-apiserver\n    - --profiling=false/g' /etc/kubernetes/manifests/kube-apiserver.yaml
sed -i 's/- kube-controller-manager/- kube-controller-manager\n    - --profiling=false/g' /etc/kubernetes/manifests/kube-controller-manager.yaml
chgrp root /etc/kubernetes/pki/
