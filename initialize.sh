#!/bin/bash
chmod +x /home/ec2-user/gitrepo/devops-assignment/playbook.yaml
touch /home/ec2-user/gitrepo/devops-assignment/host
echo localhost >> /home/ec2-user/gitrepo/devops-assignment/host
ansible-playbook -i localhost /home/ec2-user/gitrepo/devops-assignment/playbook.yaml

