In this project, you will build a Github repository from scratch and create a scaffolding that will assist you in performing both Continuous Integration and Continuous Delivery. You'll use Github Actions along with a Makefile, requirements.txt and application code to perform an initial lint, test, and install cycle. Next, you'll integrate this project with Azure Pipelines to enable Continuous Delivery to Azure App Service.

This project will give you an opportunity to demonstrate your ability to perform continuous delivery for a Python-based machine learning application using the Flask web framework. You will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API.

You are given a pre-trained, sklearn model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. If you're curious, you can read more about the data, which was initially taken from Kaggle, on the data source site. This project tests your ability to operationalize a Python flask app—in a provided file, app.py—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

===
## CI: Set Up Azure Cloud Shell
- cloud-based development structure using Azure Cloud Shell
- connect github with cloud shell

- create a makefile: to test, and application scaffolding (Tests, Code, LINT, requirements.txt)
- test code locally in azure devops ("local CI") and build server CI
- make sure code is always testable and deployable state
- does anything works?


*1. Create the cloud-base development environment
- github
- azure shell create ssh-keys
- upload keys to github account 
- take screenshoot project cloned in Azure Cloud Shell

*2. Project scaffolding
- create makefile
- create requirements.txt
- create venv
    ```
    python3 -m venv ~/.myrepo
    source ~/.myrepo/bin/activate
    ```
- create the script and file test (hello.py and test_hello.py)

*3. Local test
- make all
- add screen shoot of test passing after make all

===
## CI: Configure GitHub Actions
- configure github actions to react to events in github
- check-in code -> tested -> saas build server and config files that tell the server what to do (definition of CI)

- configure github actions essential 

*1. Enable github actions

*2. Replace yml code. 
(pythonapp.yml)

*3. Verify Test passed
lint and test steps pass

- Enable github actions in github ui
- replace yml code with scaffolding
- verify remote tests pass github actions ui
- take screenshot of passing github actions build and put into readme.md

## Continuous Delivery on Azure
- continuous delivery using azure techs
- https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/tree/master/C2-AgileDevelopmentwithAzure/project/starter_files
- get/download code
- enable source control integration with Azure pipelines
- app service permissions
- make predictions
./make_predictions.sh
make_predict_azure_app.sh

insepcts logs: 
- https://<app-name>.scm.azurewebsites.net/api/logs/docker
- az webapp log tail

*1. Azure Continuous Delivery PAAS Checklist
- replace scaffolding code with flask ml code
- authorize app service
- enable cd with azure pipeliens
- checkin azure pipelines yml base config file into 
- enable github + azure pipelines
- deploy of the project in azure pipelines
https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops
- verify prediction starter code file 

## Documentation
- README.md
- reproducibility 
- audio, video and screen shoots
- diagrams?

checklist: 
- complete all of the todos in template README.md
- make sure readme is in root directory of your github repo


```
[defaults]
group = rg-udacity-cicd-pipelines
sku = F1
appserviceplan = alejandro.magnani_asp_Linux_eastus2_0
location = eastus2
web = was-udacity-cicd-pipelines
```