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


## STATUS

can only be used manually from a cluster-admin account because of missing privileges. For this, the asb role is commented in the playbooks

```
NAMESPACE=default
sudo yum -y install python-virtualenv git
virtualenv openshift
source openshift/bin/activate
pip install ansible openshift
export ANSIBLE_ROLES_PATH=roles
ansible-galaxy install ansible.kubernetes-modules
ansible-playbook playbooks/provision.yml -e namespace=$DEFAULT
```

those are the errors beeing faced 

- failing when trying to make cluster role bindings (necessary for fission crd) or trying to create namespaces. APB cant be used to do actions clusterwide
refer to [manually.md](manually.md) for additional operations
- also fail when commenting this part with the following
```
TASK [provision-fission-apb : Create fetcher Service Account] ******************
fatal: [localhost]: FAILED! => {"changed": false, "error": 403, "failed": true, "msg": "Failed to retrieve requested object: User \"system:serviceaccount:apb-push-fission-apb-prov-zkkgd:apb-c2156b02-3be8-493e-8200-1d0b7295f63c\" cannot get serviceaccounts in the namespace \"fission-function\": User \"system:serviceaccount:apb-push-fission-apb-prov-zkkgd:apb-c2156b02-3be8-493e-8200-1d0b7295f63c\" cannot get serviceaccounts in project \"fission-function\""}
```

## Problems?

Send me a mail at [karimboumedhel@gmail.com](mailto:karimboumedhel@gmail.com) !

Mac Fly!!!

karmab
