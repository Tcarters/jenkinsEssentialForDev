# Integrating A SpringBoot App with Jenkins and Email Notification enabled
In this demo, We build a Continuous develivery of Small SpringBoot App running on gitHub. And we try to show case with the notifiation enabled to be alerted when a fail/success arise.
The demo goes by following below steps. Enjoy !!!


## Step 1 : Going to the Jenkins Dashboard 
- Create a new job 
- Enter your application name on the filed `Enter an item name` 
- Select `` Freestyle project``
- And click `` Ok``

![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pic1.png)

## Step 2: Next step on Configure page
- After clicked on `ok` , you were redirected on a page for configuration 
- Select GitHub project and provide this url : [Project repo](https://github.com/Tcarters/HelloSpringJenkins) , you can choose any springBoot gitHub link

![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pic2-Configure.png)

## Step 2.1 :  Still on same page, section Source Code Management
- Select `` Git`` and on repository the same like showing on the pic below
- After proving your local jenkins user credntials ( username & password ) and save
        ![](pic3.0 )
- Now we can select the new credentials for our job.
    ![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pic3.0-avant3.png)
- done for this section 

## Step 2.2 : Same page, Section Build Triggers
- Select **Poll SCM** , and for testing purpose we will schedule every minute/hour `( * * * * *) ` 
  ![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pic4-correc.png)

## Step 2.3 : Same page, Section Build Environment & Build Section

- Nothing to add on the section Build Environment
- On the Build part, choose ` Invoke top-level Maven targets`
- After that on section *Post-build Actions*, choose `` E-mail Notification`` and provide an email address by which will be notified for every unstable build process done by Jenkins.
- Click on ``Apply`` and done..

![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pic5.png)

## Step 3 : Build now
- Going back on the application dashboard, click on `Build Now` 

![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pic6-building.png)

- Get Console Output

![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pic7-succes-withoutEmail.png)


## Configuring Email Notification
- At the time of executing this mini-project, using gmail for sending email notifications is unavailable, so we have to use a third mail server provider. And in my case i use the api key of Sendinblue.com at [Sendinblue Api Key](https://app.sendinblue.com/settings/keys/smtp)

- Now going on the Jenkins platform: Dashboard > Manage Jenkins > Configure System
- On the section *E-mail Notification*, provide information as :
  * For SMTP Server ==> put email server of sendinBlue
  * Enable SMTP Authentication : Username = login email pof SendinBlue & Password = Master Password provided on SendinBlue 
  * Enable port 587   
![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pic8-SendBlue.png)

- Now Test by providing your Test-email recipient ( The one who will receive email from jenkins :scream: )

![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pic8-Email-conf.png)
- Done ... 


## Now Build a failed Test
- Try to build a fail Test to get a mail from Jenkins by putting error in our github main source code :

![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pic9-1gitFail.png)

- After jenkins build the failed test

![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pic10-failtest.png)
![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pic10-Fail2.png)

- Now we can check our Mail box ...

![](https://github.com/Tcarters/jenkinsEssentialForDev/blob/master/Screenshots/pic9-Email-forFailBuild.png)

- Voilaa, we made it :blush:... 
