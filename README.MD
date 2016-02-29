## Scripts for installing environment using bash and remote script 

Here is some scripts for installing dev tools using only two commands: 

```
sudo wget -O - https://raw.githubusercontent.com/YamStranger/ubuntu-dev-environment/master/xxx.sudo.sh | bash version
wget -O - https://raw.githubusercontent.com/YamStranger/ubuntu-dev-environment/master/xxx.sh | bash version
```

Scripts in this repository can be used for installing different libs and frameworks.
 
### Scala

To install scala with script from url automatically you should execute two commands (version 2.11.7 will be installed): 
 
```
sudo wget -O - https://raw.githubusercontent.com/YamStranger/ubuntu-dev-environment/master/scala.sudo.sh | bash
wget -O - https://raw.githubusercontent.com/YamStranger/ubuntu-dev-environment/master/scala.sh | bash
```

also you can provide version for scala for installing:
```
sudo wget -O - https://raw.githubusercontent.com/YamStranger/ubuntu-dev-environment/master/scala.sudo.sh | bash 2.11.7
wget -O - https://raw.githubusercontent.com/YamStranger/ubuntu-dev-environment/master/scala.sh | bash 2.11.7
```
 
