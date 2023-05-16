# Install dependencies and configuration webserver application

// Hosts are configure in inventory file
// setup ssh connection
** Create ssh key inside host (~/.ssh) dir, copy the public key to (ansible controller) /etc/ansible **
// inside /etc/ansible you will find the host file (add your host IP) ensure to uncomment, or create inventory file outside /etc/ansible dir.

<p>web1 ansible_host=18.191.205.79  ansible_ssh_user=ubuntu ansible_ssh_private_key_file=/etc/ansible/devKey.pem</p>
- host IP =
- host usuername =
- publickey path =  //wherever you saved the ssh-key

// Playbook
tasks:
- Install apache2
- Install unzip
- Install wget
- run a script // make sure script has execution permission
