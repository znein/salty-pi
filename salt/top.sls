# base deployment of all user account configuration
base:
  '*':
    - sshdx.group
    - admin.group
    - users
    - sudo
    - sshd
  'G@os:Raspbian':
    - match: compound
    - pibootconfig
  'G@roles:picam':
    - match: compound
    - motionmmal
