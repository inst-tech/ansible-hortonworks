- name: Deploy kubernetes Master
  hosts: k8s-master
  remote_user: centos
  become: true
  roles:
  - gbraad.docker
  - gbraad.kubernetes-master

- name: Deploy kubernetes Nodes
  hosts: k8s-nodes
  remote_user: centos
  become: true
  roles:
  - gbraad.docker
  - gbraad.kubernetes-node

- name: Install kubernetes client
  hosts: k8s-client
  remote_user: centos
  become: true
  roles:
  - gbraad.kubernetes-client
