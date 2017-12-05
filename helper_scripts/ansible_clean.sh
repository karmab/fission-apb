#project=`oc get project -l apb=apb-push-fission-apb -o jsonpath="{.items[0].metadata.name}"`
#oc delete project $project
oc delete -f /home/fedora/fission-apb/launch.yml
