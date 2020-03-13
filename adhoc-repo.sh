#!/usr/bin/env bash

#
# This is Ad-Hoc script to create manual BaseOS and AppStream repos on all managed hosts
# 	
#	Become is enabled for this operation
#
# Task1 - Create CentOS BaseOS rpms
ansible dev -m yum_repository -a 'name=localCentOSBaseOS description="LocalDVD CentOS-BaseOS rpms" baseurl="file:///mnt/BaseOS" enabled=yes gpgcheck=yes gpgkey="https://packages.cloud.google.com/yum/doc/yum-key.gpg"' -b
# Task2 - Create CentOS AppStream rpms
ansible dev -m yum_repository -a 'name=localCentOSAppStream description="LocalDVD CentOS-AppStream rpms" baseurl="file:///mnt/AppStream" enabled=yes gpgcheck=yes gpgkey="https://packages.cloud.google.com/yum/doc/yum-key.gpg"' -b
