FROM ansibleplaybookbundle/apb-base
# MAINTAINER {{ $MAINTAINER }}

LABEL "com.redhat.apb.version"="0.1.0"
LABEL "com.redhat.apb.spec"=\
"bmFtZTogcG9zdGdyZXNxbC1oYS1hcGIKaW1hZ2U6IGthcm1hbGFicy9wb3N0Z3Jlc3FsLWhhLWFw\
YgpkZXNjcmlwdGlvbjogQVBCIHBhdHJvbmkgcG9zdGdyZXNxbApiaW5kYWJsZTogRmFsc2UKYXN5\
bmM6IG9wdGlvbmFsCnZlcnNpb246IDAuMQptZXRhZGF0YToKICBkaXNwbGF5TmFtZTogcG9zdGdy\
ZXNxbC1oYS1hcGIgKEFQQikKICBpbWFnZVVybDogaHR0cHM6Ly9wYXN0ZWJvYXJkLmNvL0dOdjF6\
OHYucG5nCnBsYW5zOgogIC0gbmFtZTogZGVmYXVsdAogICAgZGVzY3JpcHRpb246IFRoaXMgZGVm\
YXVsdCBwbGFuIGRlcGxveXMgcG9zdGdyZXNxbAogICAgZnJlZTogVHJ1ZQogICAgbWV0YWRhdGE6\
IHt9CiAgICBwYXJhbWV0ZXJzOgogICAgICAtIG5hbWU6IGRhdGFiYXNlX3NlcnZpY2VfbmFtZQog\
ICAgICAgIHRpdGxlOiBEYXRhYmFzZSBzZXJ2aWNlIG5hbWUKICAgICAgICB0eXBlOiBzdHJpbmcK\
ICAgICAgICBkZWZhdWx0OiBwb3N0Z3Jlc3FsCiAgICAgIC0gbmFtZTogbWVtb3J5X2xpbWl0CiAg\
ICAgICAgdGl0bGU6IFNpemUgb2YgdGhlIGNsdXN0ZXIgdG8gZGVwbG95CiAgICAgICAgdHlwZTog\
c3RyaW5nCiAgICAgICAgZGVmYXVsdDogNTEyTWkKICAgICAgLSBuYW1lOiB2b2x1bWVfY2FwYWNp\
dHkKICAgICAgICB0aXRsZTogdm9sdW1lIHNwYWNlIGF2YWlsYWJsZSBmb3IgZGF0YQogICAgICAg\
IHR5cGU6IHN0cmluZwogICAgICAgIGRlZmF1bHQ6IDFHaQogICAgICAtIHRpdGxlOiBVc2VybmFt\
ZSBmb3IgUG9zdGdyZVNRTCB1c2VyIHRoYXQgd2lsbCBiZSB1c2VkIGZvciBhY2Nlc3NpbmcgdGhl\
IGRhdGFiYXNlCiAgICAgICAgbmFtZTogcG9zdGdyZXNxbF91c2VyCiAgICAgICAgdHlwZTogc3Ry\
aW5nCiAgICAgICAgcmVxdWlyZWQ6IHRydWUKICAgICAgLSB0aXRsZTogUGFzc3dvcmQgZm9yIHRo\
ZSBQb3N0Z3JlU1FMIHBvc3RncmVzIHVzZXIKICAgICAgICBuYW1lOiBwb3N0Z3Jlc3FsX3Bvc3Rn\
cmVzX3Bhc3N3b3JkCiAgICAgICAgdHlwZTogc3RyaW5nCiAgICAgICAgcmVxdWlyZWQ6IHRydWUK\
ICAgICAgLSB0aXRsZTogUGFzc3dvcmQgZm9yIHRoZSBQb3N0Z3JlU1FMIGFkbWluCiAgICAgICAg\
bmFtZTogcG9zdGdyZXNxbF9hZG1pbl9wYXNzd29yZAogICAgICAgIHR5cGU6IHN0cmluZwogICAg\
ICAgIHJlcXVpcmVkOiB0cnVlCiAgICAgIC0gdGl0bGU6IFBhc3N3b3JkIGZvciB0aGUgUG9zdGdy\
ZVNRTCBjb25uZWN0aW9uIHVzZXIKICAgICAgICBuYW1lOiBwb3N0Z3Jlc3FsX3Bhc3N3b3JkCiAg\
ICAgICAgdHlwZTogc3RyaW5nCiAgICAgICAgcmVxdWlyZWQ6IHRydWUKICAgICAgLSB0aXRsZTog\
VXNlcm5hbWUgZm9yIFBvc3RncmVTUUwgdXNlciB0aGF0IHdpbGwgYmUgdXNlZCBmb3IgcmVwbGlj\
YXRpbmcgdGhlIGRhdGFiYXNlCiAgICAgICAgbmFtZTogcG9zdGdyZXNxbF9yZXBfdXNlcgogICAg\
ICAgIHR5cGU6IHN0cmluZwogICAgICAgIHJlcXVpcmVkOiB0cnVlCiAgICAgIC0gdGl0bGU6IFBh\
c3N3b3JkIGZvciB0aGUgUG9zdGdyZVNRTCByZXBsaWNhdGlvbiB1c2VyCiAgICAgICAgbmFtZTog\
cG9zdGdyZXNxbF9yZXBfcGFzc3dvcmQKICAgICAgICByZXF1aXJlZDogdHJ1ZQogICAgICAgIHR5\
cGU6IHN0cmluZwogICAgICAtIHRpdGxlOiBOYW1lIG9mIHRoZSBQb3N0Z3JlU1FMIGRhdGFiYXNl\
IGFjY2Vzc2VkCiAgICAgICAgbmFtZTogcG9zdGdyZXNxbF9kYXRhYmFzZQogICAgICAgIHJlcXVp\
cmVkOiB0cnVlCiAgICAgICAgdmFsdWU6IHNhbXBsZWRiCiAgICAgICAgdHlwZTogc3RyaW5nCg=="






















COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles

USER apb
