# Building a Pipeline in Jenkins
Let's discover the steps to build a Jenkins Pipeline in collab with GitHub Repo.

## Step 1: Create a new Project Dev

- Start the Jenkins service, in my case the Jenkins server is running in a virtual machine at 192.168.40.90 on port 8082.
![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pipline/b1-dash.png)
- First create a new job by going on Jenkins platform dashborad.
- On the newJob page, give a name to the job and then select *Freestyle project* and save.
![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pipline/b1-job.png)


## Step 2:  Configuring the Job Dev 

- On the same page, go to the General Section,

- After saved the new Job, you will be redirected to the  `*General Section*` 
![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pipline/b2-gen.png)

- Select GitHub project and enter a springBoot project like [](https://github.com/Tcarters/HelloSpringJenkins)

- Under `Source Code Management ` section, select git:
  * Provide the github repo link
  * Credentials to access the Jenkins service
  * And done for this section.
  ![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pipline/b3-scm.png)

- Now come on the `Build Triggers` section:
  * Select ``Poll SCM`` and schedule like ` * * * * *  `
  ![](pic4)

- Skip Build Environment section.

- Next Section `Build `, select *Invoke top-level Maven targets* and provide a Goals
![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pipline/b4.png)

- And click `Apply` and `Save` it.
![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pipline/b5.png)

## Step 3: Create another Project TestDev 

- Here also , we create another Job named Test like the previous one but skipping the section ` Source Code Management` meaning no configuration required int his section.
![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pipline/b3.1.png).
![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pipline/b3.2.png)
![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pipline/b3.3.png)

## Step 4: Create a Third Project ProductionDev

- Same steps as the First project Dev.
- Changes here also reside in the `Build` section and like the second no Configuration in the section `Source Code Management`.
![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pipline/b4.1.png)
![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pipline/b4.2.png)
![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pipline/b4-3.png)

## Step 5: Create the Pipeline

- Return on the dashboard, Check if the build Pipeline plugin is installed.
![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pipline/b5-1-plugin.png)

- Now create a pipeline build view like below:
![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pipline/b5-2pipeline.png)

- Configure the pipeline view like:
  * Under `Name` section , you can give a bref description of the pipeline.
  ![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pipline/b5-3conf.png)
  ![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pipline/b5-4conf.png)

  * Under gthe section `Pipeline Flow`, select the project which will start first in my ase Dev.
  * And under section 'Display Options', select the nomber of Builds to be displayed and play for any option under Row Headers & Column Headers.
- And click 'Apply & Save'.
![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pipline/b5-5conf.png)

- Parametrize the second project TestDev to run after the first one.
  * Just add an option under  the `Build Triggers`, the feature *Build after other projects are built* to run only after the First Project succeeded.
  
![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pipline/b5-6conf.png)

- Same for the third project
  * Just add an option under  the `Build Triggers`, the feature *Build after other projects are built* to run only after the Second Project succeeded.
![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pipline/b5-7conf.png)

- Return on the View pipeline dashboard:
![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pipline/b5-8pipeline.png)

## Step 6: Test the pipeline
- Just modifying a code in the github repo, and this will start the Pipeline Trigger workflow.
- We can see below the 2 first Pipeline fails before we modified and pushed the new code and that explains also one of the feature of the Pipeline meaning that if the 1st Job fails all others won't start because they are configured on single workflow..
![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pipline/b-resPip.png)