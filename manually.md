PROJECT="default"
oc new-project fission-function
oc new-project fission-builder
oc adm policy add-cluster-role-to-user cluster-admin -z fission-svc -n $PROJECT
oc adm policy add-cluster-role-to-user cluster-admin -z fission-fetcher -n fission-function
oc adm policy add-cluster-role-to-user cluster-admin -z fission-fetcher -n fission-builder
