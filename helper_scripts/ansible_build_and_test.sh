cd /home/fedora/fission-apb
apb build && apb push && oc create -f /home/fedora/fission-apb/launch.yml
