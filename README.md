# redis-statefulset-cluster
Deploy Redis Statefulset Cluster on Kubernetes with 3 sentinel nodes, 1 master and 2 slaves.

## Getting started:

Clone the repo:

`git clone 'https://github.com/sabershahhoseini/redis-sentinel-statefulset'`

Edit the **./manifests/redis-configmap.yaml** manifest and provide your own password for redis master and slaves by editing these two lines and changing **a-very-complex-password**:


[![Password](https://i.imgur.com/locKsUZ.png "Password")](https://i.imgur.com/locKsUZ.png "Password")

 `masterauth a-very-complex-password`
 
 `requirepass a-very-complex-password`
 
Then, run the initializer script:

`bash init.sh`

Once finished, you can get the list of pods:

`kubectl -n redis get pods`

That was it! Can you believe it? You're good to go!
