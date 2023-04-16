
Use `kube-bench` to ensure 1.3.2 has status PASS.

<br>
<details><summary>Solution</summary>

<br>
<p>Check for results</p>

```
kube-bench run --targets master
```{{exec}}

```
kube-bench run --targets master --check 1.3.2
```{{exec}}

<br>
<p>Fix the <code>/etc/kubernetes/manifests/kube-controller-manager.yaml</code></p>
<br>

```yaml
...
  containers:
  - command:
    - kube-controller-manager
    - --profiling=false # ADD
...
    image: k8s.gcr.io/kube-controller-manager:v1.22.2
...
```

<br>

Now wait for container to be restarted: `watch crictl ps`

</details>
