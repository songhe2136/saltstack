Config sshd:
  cmd.run:
    - name: sed -i 's/#UseDNS yes/UseDNS no/g' /etc/ssh/sshd_config && sed -i 's/GSSAPIAuthentication yes/GSSAPIAuthentication no/g' /etc/ssh/sshd_config

Restart sshd:
  service.running:
    - name: sshd
    - enable: True
    - reload: True
    - require:
      - cmd: Config sshd
