#!/bin/bash

for((i=1;i<=3;i++))
do 
	scp /etc/yum.repos.d/ceph.repo  node"$i":/etc/yum.repos.d/ceph.repo
	scp  /etc/hosts    node"$i":/etc/hosts  
done

scp /etc/yum.repos.d/ceph.repo  client:/etc/yum.repos.d/ceph.repo
scp  /etc/hosts    client:/etc/hosts

