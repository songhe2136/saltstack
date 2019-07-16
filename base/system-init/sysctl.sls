Change the kernel sysctl system:
  sysctl.present:
    - names:
      - net.ipv4.ip_forward:
        - value: 1
      - vm.swappiness:
        - value: 0
      - fs.file-max:
        - value: 2000000
