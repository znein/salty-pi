testacct:
  user.present:
    - password: {{ pillar['userdata']['testacct']['password'] }}
    - groups: {{ pillar['userdata']['testacct']['groups'] }}
pi:
  user.absent:
    - purge: True
    - force: True
