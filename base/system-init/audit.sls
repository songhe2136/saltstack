Audit:
  file.append:
    - name: /etc/profile
    - text:
      - export PROMPT_COMMAND='{ msg=$(history 1 | { read x y; echo $y; });logger "[euid=$(whoami)]":$(who am i):[`pwd`]"$msg"; }'
      - export HISTTIMEFORMAT="%F %T `whoami` "
