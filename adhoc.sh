#!/bin/bash
#
#
# Task 1: DevOps user create on managed hosts with group wheel
ansible all -m user -a 'name=devops groups=wheel state=present' -u root -k

# Task 2: SSH Key deploy to managed hosts
ansible all -m authorized_key -a 'user=devops key={{ lookup("file","/home/devops/.ssh/id_rsa.pub") }} state=present' -u root -k
# Task 3: Sudo without password
ansible all -m copy -a 'content="%wheel ALL=(ALL) NOPASSWD: ALL" dest=/etc/sudoers.d/wheel mode=0400' -u root -k
