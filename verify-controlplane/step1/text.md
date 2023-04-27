
Use `kube-bench` to ensure 1.2.20 has status PASS.

<br>
<details><summary>Solution</summary>

<br>
<p>Check for results</p>

```
kube-bench run --targets master
```{{exec}}

```
kube-bench run --targets master --check 1.2.20
```{{exec}}

<br>
<p>Fix the <code>/etc/kubernetes/manifests/kube-apiserver.yaml</code></p>
<br>

```yaml
...
containers:
  - command:
    - kube-apiserver
    - --profiling=false # ADD
...
    image: registry.k8s.io/kube-apiserver:v1.22.2
...
```

Now wait for container to be restarted: `watch crictl ps`

</details>
