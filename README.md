## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

(diagram.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the _____ file may be used to install only certain pieces of it, such as Filebeat.

 Enter the playbook file._
install-elk.yml
filebeat.yml
metricbeat-playbook.yml
my-playbook.yml1
This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly _____, in addition to restricting _____ to the network.
 What aspect of security do load balancers protect? What is the advantage of a jump box?_a jumpbox helps with automating webservers/vms on downlaoding dvwa to every vm instead of doing it manually one by one.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the _____ and system _____.
 What does Filebeat watch for?_data logs
 What does Metricbeat record?_ metric data

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.


| Name     | Function  | IP Address | Operating System |
|----------|-----------|------------|------------------|
| Jump Box | Gateway   | 10.0.0.4   | Linux            |
| WEB1     | HTTP      | 10.0.0.5   | Linux            |
| WEB2     | HTTP      | 10.0.0.6   | Linux            |
| WEB3     | HTTP      | 10.0.0.7   | Linux            |
| ELK      | Data Base | 10.1.0.4   | Linux            |


### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the _____ machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
 Add whitelisted IP addresses_174.52.143.23

Machines within the network can only be accessed by _____.
 Which machine did you allow to access your ELK VM? What was its IP address?_Jumpboxprovisoner 137.135.27.248

A summary of the access policies in place can be found in the table below.

| Name              | Publicly Accessible | Allowed IP Addresses |
|-------------------|---------------------|----------------------|
| Jump Box ssh      | No                  | 174.52.143.23        |
| SSH from jump box | no                  | 10.0.0.4             |
|                   |                     |                      |
### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
What is the main advantage of automating configuration with Ansible?_you dont have to do it manually on each vm.

The playbook implements the following tasks:
 In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- setting VmaxMapCount
- Installs docker.io
- Installs python3pip
- Docker sebp Elk v761

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

(Ansible/dockerps.PNG)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
 List the IP addresses of the machines you are monitoring_10.0.0.5, 10.0.0.6, 10.0.0.7

We have installed the following Beats on these machines:
Specify which Beats you successfully installed_filebeat, metricbeat 

These Beats allow us to collect the following information from each machine:
In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._filebeat logs data and collects the log events. metricbeat collects metrics from the operating system and services that are running on the machine.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_ the yml file. ansible container
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_you edit the config files to detrmine what machine is what and in the play book you specify that name. example webservers would be placed in the play book on the hosts line.
- _Which URL do you navigate to in order to check that the ELK server is running?  http://[your.VM.IP]:5601/app/kibana

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
