Set selinux=0:
  cmd.run:
    - name: setenforce 0 && sed -i 's/SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config
