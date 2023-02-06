# Integration of SpringBoot Application with Jenkins

## Step 1 : On Jenkins Dashboard 
- Create a new job 
- Enter your application name on the filed `Enter an item name` 
- Select `` Freestyle project``
- And click `` Ok``

    // Ading  ![](pic1)

## Step 2: Next step on Configure page
- After clicked on `ok` , you were redirected on a page for configuration 
- Select GitHub project and provide this url : [Project repo](https://github.com/Tcarters/HelloSpringJenkins) , you can choose any springBoot gitHub link

    ![](pic2)

## Step 2.1 :  Still on same page, section Source Code Management
- select `` Git`` and on repository the same like showing on the pic below
- after proving your local jenkins user credntials ( username & password ) and save
        ![](pic3.0 )
- Now we can select the new credentials for our job.
    ![](pic3)
- done for this section 

## Step 2.2 : Same page, Section Build Triggers
- Select **Poll SCM** , and for testing purpose we will schedule every minute/hour `( * * * * *) ` 
  ![](pic4)

## Step 2.3 : Same page, Section Build Environment & Build Section
- Nothing to add on the section Build Environment
- On the Build part, choose ` Invoke top-level Maven targets`
- After that on section *Post-build Actions*, choose `` E-mail Notifcation`` and provide an email address by which will be notified for every unstable build process done by Jenkins.
- Click on ``Apply`` and done..

## Step 3 : Build now
- Going back on the application dashboard, click on `Build Now` and ` >` and select console Output


## Configuring Email Notification
- Manage Jenkins
- Configure System