{% if grains['osmajorrelease'] == 6 %}
{% set SERVICE = 'iptables' %}
{% elif grains['osmajorrelease'] == 7 %}
{% set SERVICE = 'firewalld' %}
{% endif %}

Stop the firewall:
  service.dead:
    - name: {{ SERVICE }}
    - enable: False
