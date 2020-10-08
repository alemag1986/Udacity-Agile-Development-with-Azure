![Python application test with Github Actions](https://github.com/alemag1986/udacity-cicd-pipelines/workflows/Python%20application%20test%20with%20Github%20Actions/badge.svg?branch=main&event=push)

# Overview

Udacity final project building a CI/CD Pipeline for a Python-based machine learning application.

## Project Plan

* [Trello board](https://trello.com/b/bGd4Kp9p/cicd-pipeline-project)
* [project plan](https://github.com/alemag1986/udacity-cicd-pipelines/blob/main/docs/CICD%20Pipeline%20Project%20Plan.xlsx)

## Instructions

<TODO:  
* Architectural Diagram (Shows how key parts of the system work)>

### Dependencies/Pre-Requisites

### Steps

<TODO:  Instructions for running the Python project.  How could a user with no context run this project without asking you for any help.  Include screenshots with explicit steps to create that work. Be sure to at least include the following screenshots:

- Activate Cloud Shell
- Generate ssh keys
- ssh-keygen -t rsa
- Add keys in GitHub
- clone Github
- run make envsetup
- run make all
- enable github actions -> set up a workflow yourself
- update YAML with content from utils/pythonapp.yml
- save action with pythonapp.yml name
- az webapp up -n was-udacity-cicd-pipelines -g rg-udacity-cicd-pipelines -l eastus2 --sku F1

* Project running on Azure App Service

![Azure App Service](https://github.com/alemag1986/udacity-cicd-pipelines/tree/main/screenshots/)

* Project cloned into Azure Cloud Shell

![Azure Cloud Shell](https://github.com/alemag1986/udacity-cicd-pipelines/blob/main/screenshots/Azure%20Cloud%20Shell%20%20repo%20cloned.png?raw=true)

* Passing tests that are displayed after running the `make all` command from the `Makefile`

![make all](https://github.com/alemag1986/udacity-cicd-pipelines/tree/main/screenshots/)

* Output of a test run

![test run](https://github.com/alemag1986/udacity-cicd-pipelines/tree/main/screenshots/)

* Successful deploy of the project in Azure Pipelines.  

![Azure Pipelines](https://github.com/alemag1986/udacity-cicd-pipelines/tree/main/screenshots/)

* Running Azure App Service from Azure Pipelines automatic deployment

![automatic deployment](https://github.com/alemag1986/udacity-cicd-pipelines/tree/main/screenshots/)

* Successful prediction from deployed flask app in Azure Cloud Shell. 

![Azure Cloud Shell](https://github.com/alemag1986/udacity-cicd-pipelines/tree/main/screenshots/)

* Output of streamed log files from deployed application

![deployed application](https://github.com/alemag1986/udacity-cicd-pipelines/tree/main/screenshots/)


## Enhancements

<TODO: A short description of how to improve the project in the future>

## Demo 

<TODO: Add link Screencast on YouTube>

