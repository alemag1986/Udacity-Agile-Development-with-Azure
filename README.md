![Python application test with Github Actions](https://github.com/alemag1986/udacity-cicd-pipelines/workflows/Python%20application%20test%20with%20Github%20Actions/badge.svg?branch=main&event=push)

# Overview

Udacity final project building a CI/CD Pipeline for a Python-based machine learning application.

# Project Plan

* [Trello board](https://trello.com/b/bGd4Kp9p/cicd-pipeline-project)
* [project plan](https://github.com/alemag1986/udacity-cicd-pipelines/blob/main/docs/CICD%20Pipeline%20Project%20Plan.xlsx)

# Instructions

* Architectural Diagram 
(Shows how key parts of the system work)

## Dependencies/Pre-Requisites

- Download the repository
- Have a version of python 3.5.X installed
- (optional) Have an Azure subscription to deploy in azure

## Steps to Run

0. Clone the repository and go inside the new folder
1. Run the command: `make setupenv` to set up the venv and update pip
2. Run the command: `make all` to install python dependencies, lint and test the code.  
3. Finally run the command: `make run` to run the application in localhost. 
4. Optionally, you could run a prediction by executing `make prediction`.

## Steps to Initial Deploy

0. Connect to Azure and open the Azure Cloud Shell
1. Upload/Clone the code into the Azure Cloud Shell
    - In case of forking in GitHub:
      - Generate ssh-keys (`ssh-keygen -t rsa`)
      - Upload publick key to GitHub
2. Make sure project run in Azure Cloud Shell
    - run `make setupenv`
    - run `make all`
    - run `make run`       
3. Once the application is tested locally proceed to deploy on azure, using the following command:  
    ```
    az webapp up -n <<replace-with-web-app-name>> -g <<replace-with-resource-group-name>> -l eastus2 --sku F1`
    ```
    Replace `replace-with-web-app-name` with the application name, `replace-with-resource-group-name` with the resource group name, and potentialy change the location (`-l`) and/or the server capacity (`--sku`).

    Possible values for locations (`az account list-locations -o table`).
    Possible values of [skus](https://azure.microsoft.com/en-us/pricing/details/app-service/linux/)


---

* Project running on Azure App Service

![Azure App Service](https://github.com/alemag1986/udacity-cicd-pipelines/blob/main/screenshots/AzureAppService.png?raw=true)

* Project cloned into Azure Cloud Shell

![Azure Cloud Shell](https://github.com/alemag1986/udacity-cicd-pipelines/blob/main/screenshots/AzureCloudShell-repo-cloned.png?raw=true)

* Passing tests that are displayed after running the `make all` command from the `Makefile`

![Azure Cloud Shell make all](https://github.com/alemag1986/udacity-cicd-pipelines/blob/main/screenshots/AzureCloudShell-make-all.png?raw=true)

* Output of a test run

![test run](https://github.com/alemag1986/udacity-cicd-pipelines/blob/main/screenshots/GitHubActions-test-run.png?raw=true)

* Successful deploy of the project in Azure Pipelines.  

![Azure Pipelines](https://github.com/alemag1986/udacity-cicd-pipelines/blob/main/screenshots/AzurePipelines.png?raw=true)

* Running Azure App Service from Azure Pipelines automatic deployment

![automatic deployment1](https://github.com/alemag1986/udacity-cicd-pipelines/raw/main/screenshots/AzureDevOps-pipeline-1.png)

![automatic deployment2](https://github.com/alemag1986/udacity-cicd-pipelines/raw/main/screenshots/AzureDevOps-pipeline-2.png)

* Successful prediction from deployed flask app in Azure Cloud Shell. 

![Azure Cloud Shell](https://github.com/alemag1986/udacity-cicd-pipelines/blob/main/screenshots/AzureCloudShell-prediction.png?raw=true)

* Output of streamed log files from deployed application

![streamed log](https://github.com/alemag1986/udacity-cicd-pipelines/raw/main/screenshots/StreamedLogs.png)


## Enhancements

<TODO: A short description of how to improve the project in the future>

## Demo 

<TODO: Add link Screencast on YouTube>

