{% if grains['osmajorrelease'] == 6 %}
{% set LIMITSFILE = '/etc/security/limits.conf' %}
{% elif grains['osmajorrelease'] == 7 %}
{% set LIMITSFILE = '/etc/systemd/system.conf' %}
{% endif %}
Limits config:
  file.managed:
    - name: {{ LIMITSFILE }} 
{% if grains['osmajorrelease'] == 6 %}
    - source: salt://base/files/limits.conf.template
{% elif grains['osmajorrelease'] == 7 %}
    - source: salt://base/files/system.conf.template
{% endif %}

/etc/profile:
  file.append:
    - text:
      - ulimit -c unlimited
      - ulimit -n 65535
