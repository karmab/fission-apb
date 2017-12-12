#!/bin/bash

source `which util.sh`

backtotop
desc "Log in openshift"
run "oc login  -u developer -p developer --insecure-skip-tls-verify=true localhost:8443"

backtotop
desc "Create a dedicated project"
run "oc new-project fission"

backtotop
desc "Install requirements"
run "sudo yum -y install python-virtualenv git"

backtotop
desc "Create virtualenv"
run "virtualenv openshift"

backtotop
desc "Activate virtualenv"
run "source openshift/bin/activate"

backtotop
desc "Install python modules"
run "pip install ansible openshift"

backtotop
desc "Install ansible module"
run "ansible-galaxy install ansible.kubernetes-modules"

backtotop
desc "Clone my repo"
run "git clone https://github.com/karmab/fission-apb.git"

backtotop
desc "Move to my repo"
run "cd fission-apb"

backtotop
desc "Set ansible roles path"
run "export ANSIBLE_ROLES_PATH=roles"

backtotop
desc "Deploy"
run "ansible-playbook playbooks/provision.yml -e namespace=fission"

backtotop
desc "Check pods are there"
run "oc get pod"

backtotop
desc "Set controller env variable"
run "export FISSION_URL=http://`oc get route controller -o jsonpath={.spec.host}`"

backtotop
desc "Set router env variable"
run "export FISSION_ROUTER=`oc get route router -o jsonpath={.spec.host}`"

backtotop
desc "Install fission client"
run "curl -Lo fission https://github.com/fission/fission/releases/download/0.4.0/fission-cli-linux && chmod +x fission && sudo mv fission /usr/bin/"

backtotop
desc "Create an environment"
run "fission env create --name python --image fission/python-env:v0.2.1"

backtotop
desc "Use some basic code"
run "cat ~/hello.py"

backtotop
desc "Create a function"
run "fission function create --name hellopy --env python --code hello.py"

backtotop
desc "Create a route"
run "fission route create --method GET --url /hellopy --function hellopy"

backtotop
desc "Execute my function"
run "curl http://$FISSION_ROUTER/hellopy"

backtotop
desc "Deploy"
run "ansible-playbook playbooks/depprovision.yml -e namespace=fission"

backtotop
desc "Check pods are gone"
run "oc get pod"
