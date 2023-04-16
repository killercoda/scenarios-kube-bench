
Use `kube-bench` to ensure 1.1.19 has status PASS.

<br>
<details><summary>Solution</summary>

<br>
<p>Check for results</p>

```
kube-bench run --targets master
```{{exec}}

```
kube-bench run --targets master --check 1.1.19
```{{exec}}

<br>
<p>Fix the <code>/etc/kubernetes/pki/</code></p>
<br>

```
chgrp root /etc/kubernetes/pki/
```{{exec}}

</details>
