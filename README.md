# hadoop-cloudnative

This is a sample for how to setup a helm repo in github without gh-pages, and use it to deploy hadoop on Kubernetes.


# Adding a new version or chart to this repo

```bash
$ helm package $YOUR_CHART_PATH/ # build the tgz file and copy it here
$ helm repo index . # create or update the index.yaml for repo
$ git add .
$ git commit -m 'New chart version'
```

# How to use it as a helm repo

You might know github has a raw view. So simply use the following:

```bash
$ helm repo add sample 'https://raw.githubusercontent.com/ChenghuiChen/hadoop-cloudnative/master/'
$ helm repo update
$ helm search hadoop-cloudnative
NAME            	VERSION	DESCRIPTION
sample/hadoop-cloudnative	0.1.2  	A Helm chart for hadoop-cloudnative in Kubernetes
```

If your repo is private you can create a "Personal access tokens" and use it like:

```bash
$ helm repo add sample 'https://MY_PRIVATE_TOKEN@raw.githubusercontent.com/ChenghuiChen/hadoop-cloudnative/master/'
```

Note: Becareful who is creating the token and what is its level of access.