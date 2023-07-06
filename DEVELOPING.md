# Development Guide

## Running integration tests locally

You will need an API key with access to all features to run integration tests. You can set this via the env variable
API_KEY in the test plan or on your shell when running `swift test`.

## Regenerating the code

Run the following shell script. Then check your git diff. It will definitely overwrite a few things we don't want
it to, so be careful.
 
```shell
openapi-generator generate -i https://api.stadiamaps.com/openapi.yaml -g swift5 --strict-spec=true -o . -p disallowAdditionalPropertiesIfNotPresent=false -p projectName="StadiaMaps" -p useSPMFileStructure=true -p responseAs="AsyncAwait"
```
