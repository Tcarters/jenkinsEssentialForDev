
### Changing default jenkins port on Ubuntu
- Option 1:  systemctl edit jenkins  // Fails in my case so

- Option 2:  sudo nano  ``/lib/systemd/system/jenkins.service``, and change port

- Command : Environment="JENKINS_PORT=9092"

- Run: `sudo systemctl daemon-reload`

- Run: `sudo systemctl restart jenkins `

- Done :joy:
 
