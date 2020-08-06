# Introduction to Kubernetes

Kubernetes consists of pluggable parts and components that allow you to set up your
cluster the way you would like.

Today, we'll work with several Kubernetes components as we stand up a demo application and
instrument our cluster using a Helm chart to set up the Datadog agent.

To confirm that we're set up to work with Kubernetes, let's confirm all our tooling is working as
expected.

`kubectl version`{{execute}}

We can check to see what nodes are in our cluster with:

`kubectl get nodes`{{execute}}

Or, we can get a list of namespaces with:

`kubectl get namespaces`{{execute}}
