

## What is  Jenkins ?
- Jenkins is an Contiguous integration tool used to build (compile, test) code and deploy it to the production.
- Jenkins provides hundreded of plugins to support building, deploying and automating any project.
- It is a server-based system that runs in servlet containers such as Apache Tomcat. It supports version control tools like SVN, Git to automate build.

## What is Continuous Integration ?
> Continuous integration is a process in which all development work is integrated as early as possible. The resulting artifacts are automatically created and tested. Thisprocess allows to identify errors as early as possible.
![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/continuousIntegration.png)

## Comparison

| Before Continuous Integration | After Continuous Integration | 
|:----------|:-------------:|
| The entire source code was built and the tested | Every commit made in the source code is built and tested.  |
| Developers have to wait for test results        | Developers know the test result of evry commit made in the source code on the run |
| No feedback                                     | Feedback is present | 


## What is Pipeline ?
> Pipeline is Workflow with the group of events or jobs that are chained and integrated with each other in sequence.
- Pipeline is a process of continuous delivery automation using Jenkins job (items)
- Each job contains some processing inlet and outlets
- Process defined as : `` Build - Deploy Test - Release``
- Continuous Delivery Pipeline
![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pipline/b1.png)

## Types of Pipelines
- Building Plugin Pipeline (my demo will be based on this ..)
- Declarative pipeline
- Scripted pipeline
   :exclamation: Declarative Pipeline and Scripted Pipeline are most used for large or multiple jobs to deploy.


### Case to use Build Plugin Pipeline ?
- If your Application Have Less Job To execute then go for build plugin pipeline
- If your Application Have Multiple Job Like Developemt, Code Review, Unit Test, Coverage Test, Load Test, Integration Test, Packaging, Build, etc... Then we should go for Declarative or else  Scripted Pipeline. 

## Pipeline Use cases
- Assume we have to perform only few job like Developement, Testing, and Deploying