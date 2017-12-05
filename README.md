# fission-apb

fission core apb based on existing helm chart 
based on [https://github.com/fission/fission/tree/master/charts/fission-core](https://github.com/fission/fission/tree/master/charts/fission-core)

## contents

- fission-apb ansible code
- yaml to create/delete serviceinstance

## requisites

- an openshift instance with ansible service broker enabled
- the destination project already created as creating projects is forbidden by ASB api
- you also need to set *sandbox_role* to *cluster-admin* in the *broker-config* configmap ( in the ansible-service-broker project) and restart broker afterwards( for instance by deleting the asb* pod )
-
## how to make apb available

```
apb build
apb push
```

## how to create a serviceinstance

edit the launch.yml and set the desired parameters (make sure that the project to use already exists). then

```
oc create -f launch.yml
```

## troubleshooting

you can use the [*helper\_script ansible_logs.sh*](helper_scripts/ansible_logs.sh) to see the provisioning of your service

## tips on openshift 

TODO

## STATUS

- failing when trying to make cluster role bindings


## Problems?

Send me a mail at [karimboumedhel@gmail.com](mailto:karimboumedhel@gmail.com) !

Mac Fly!!!

karmab
