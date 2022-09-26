> Application passed in the pipeline:
> https://github.com/redhat-oraex/tekton-pipeline-demo-app/

# Tekton Pipeline Provisioning

- **Task 1:** clone-git-repo
  - Put the source code in a workspace. 
- **Task 2:** maven-build-task
  - Build .war from source code
- **Task 3:** nexus-deploy
  - Send .war to Nexus
- **Task 4:** build-image
