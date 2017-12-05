project=`oc get project -l apb-fqname=apb-push-fission-apb -o jsonpath="{.items[0].metadata.name}"`
pod=`oc get pod  -n $project  -o jsonpath="{.items[0].metadata.name}"`
echo $pod | grep -q apb
if  [ "$?" == '0' ] ; then
	oc logs -f $pod -n $project
else
	echo "no apb logs found"
fi
