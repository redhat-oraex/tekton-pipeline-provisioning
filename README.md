> Application passed in the pipeline:
> https://github.com/redhat-oraex/tekton-pipeline-demo-app/

# Tekton Pipeline Provisioning

- **Task 1:** Clone App Repository
  - Apparently openshift pipelines already comes with a task ready to perform this objective. Do it like [this](#Git-Clone-Task).
- **Task 2:** Maven Build
  - Build .war from source code
  - Send .war to Nexus
- **Task 3:** Build Image

# Git Clone Task
    tasks:
     - name: fetch-repository
       taskRef:
         name: git-clone
         kind: ClusterTask
       workspaces:
       - name: output
         workspace: shared-workspace
       params:
       - name: url
         value: $(params.git-url)
       - name: subdirectory
         value: ""
       - name: deleteExisting
         value: "true"
       - name: revision
         value: $(params.git-revision)
