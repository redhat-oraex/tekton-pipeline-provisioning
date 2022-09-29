> Application passed in the pipeline:
> https://github.com/redhat-oraex/tekton-pipeline-demo-app/

# Tekton Pipeline Provisioning

## Requirements
- A namespace named "oraex-tekton-pipeline".
- A Nexus repository.


## Tasks
- **Task 1:** clone-git-repo
  - Put the source code in a workspace. 
- **Task 2:** maven-build-and-nexus-deploy
  - Build .war from source code and send it to Nexus
- **Task 3:** build-and-push-image
  - Build image with .war deployed inside it
  - Push image to quay.io
