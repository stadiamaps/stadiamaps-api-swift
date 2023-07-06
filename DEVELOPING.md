# Development Guide

```shell
openapi-generator generate -i https://api.stadiamaps.com/openapi.yaml -g swift5 --strict-spec=true -o . -p disallowAdditionalPropertiesIfNotPresent=false -p projectName="StadiaMaps" -p useSPMFileStructure=true -p responseAs="AsyncAwait"
```
