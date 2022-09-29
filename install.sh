#!/bin/bash

oc create project oraex-tekton-pipeline
oc project oraex-tekton-pipeline

oc create secret generic registries-pull-secret-tekton --from-file=.dockerconfigjson=./infrastructure/config.json --type=kubernetes.io/dockerconfigjson
oc apply -f ./infrastructure/rolebinding.yaml
oc apply -f ./infrastructure/serviceaccount.yaml

oc apply -f ./pipeline
oc apply -f ./tasks