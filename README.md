# redis-statefulset-cluster
Deploy Redis Statefulset Cluster on Kubernetes with 3 sentinel nodes, 1 master and 2 slaves.

## Getting started:

Clone the repo:
`git clone 'https://github.com/sabershahhoseini/redis-statefulset-cluster'`

Edit the **./manifests/redis-configmap.yaml** manifest and provide your own password for redis master and slaves by editing these two lines and changing **a-very-complex-password**:

 `masterauth a-very-complex-password`
 `requirepass a-very-complex-password`
 
Then, run the initializer script:

`bash init.sh`

When the script has done it's work, you can get the list of pods:

