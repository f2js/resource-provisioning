# resource-provisioning
[![Build Status](https://app.travis-ci.com/f2js/resource-provisioning.svg?branch=main)](https://app.travis-ci.com/f2js/resource-provisioning)

## What is this repo?
This repository provides Resource Provisioning for the f2js exam project (Winter 2022). Using Terraform, we provision a Kubernetes Cluster on the Digital Ocean provider. 

Default is using a local state-file for keeping track of the state of the resources, however in order to make it play well with the CI/CD pipeline, we use a state-file hosted on terraform.io. This ensures that any machine connected to the hosted state-file are aware of the changes made on any other machine, giving us a lot of flexibility. 
