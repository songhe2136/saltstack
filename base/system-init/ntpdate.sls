Set ntp server:
  cron.present:
    - name: /usr/sbin/ntpdate time1.aliyun.com
    - user: root
    - minute: '00'
    - hour: '*/1'
