# Install dependencies and configuration webserver application


// setup ssh connection

**Create ssh key inside host (~/.ssh) dir, copy the public key to (ansible controller) /etc/ansible**

// inside /etc/ansible you will find the host file (add your host IP) ensure to uncomment, or create inventory file outside /etc/ansible dir.

web1 ansible_host=18.191.205.79  ansible_ssh_user=ubuntu ansible_ssh_private_key_file=/etc/ansible/devKey.pem
- host IP =
- host usuername =
- publickey path =  //wherever you saved the ssh-key

// Playbook
tasks:
- Install apache2
- Install unzip
- Install wget
- run a script // make sure script has execution permission

***Script***
- Download application files
- Extract
- copy web file to /var/www/html
- Restart apache2

![Screenshot from 2023-05-16 03-48-56](https://github.com/youngmind01/Ansible-projects/assets/54754559/6e1fefc5-8f44-4371-878b-76ad707bb1ea)
