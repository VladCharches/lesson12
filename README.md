MTN.*NIX.11 Automated Environment Configuration Management
---

***Student***: [Uladzislau Charches](https://upsa.epam.com/workload/employeeView.do?employeeId=4060741400038705754#emplTab=general)

# Puppet lesson_12

**Task1**

**1. I edited 2 Vagrantfiles. Run it with edited files "host" on client VM. You can check it below**

[Vagrantfile-client](https://github.com/VladCharches/lesson12/blob/master/Vagrant_Client)
[Vagrantfile-server](https://github.com/VladCharches/lesson12/blob/master/Vagrantfile_server)

**Server-side (All operations we should do on root)** 

I installed mysql-module

$ puppet module install puppetlabs-mysql

I created manifest vim /etc/puppetlabs/code/environments/production/manifests/site.pp

# My manifest [site.pp](https://github.com/VladCharches/lesson12/blob/master/site.pp) 



**Client-side:**

$ puppet agent --server server.minsk.epam.com -t

[output.log](https://github.com/VladCharches/lesson12/blob/master/output.log)

Screenshots:

**Checking MySQl**

![1](https://github.com/VladCharches/lesson12/blob/master/screens/1.png)
![2](https://github.com/VladCharches/lesson12/blob/master/screens/2.png)
