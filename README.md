# Container Registry

This repository contains dockerfiles, which are automically build at push time if found modified using Github Actions. Create workflows for verifying changes using dockerfile hash and push changes to Container Register automatically so that everone will pull latest image after every successful push.

## Points to Remember
* Create workflows first and check for a single dockerfile.
* Changes are tracked using hash of dockerfile, so dont change dockerfiles.  