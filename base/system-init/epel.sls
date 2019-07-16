Epel release:
  pkg.installed:
{% if grains['osmajorrelease'] == 6 %}
    - source:
      - aliyun_epel: https://mirrors.aliyun.com/epel/epel-release-latest-6.noarch.rpm
    - unless: rpm -qa|grep epel-release-6
{% elif grains['osmajorrelease'] == 7 %}
    - source:
      - aliyun_epel: https://mirrors.aliyun.com/epel/epel-release-latest-7.noarch.rpm
    - unless: rpm -qa|grep epel-release-7
{% endif %}
