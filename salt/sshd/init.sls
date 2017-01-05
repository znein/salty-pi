/etc/ssh/sshd_config:
  file.managed:
    - source: salt://sshd/files/sshd_config
    - user: root
    - group: root
    - mode: 644

    
