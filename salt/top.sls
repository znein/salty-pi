# base deployment of all user account configuration
base:
  '*':
    - core
    - sshdx.group
    - admin.group
    - users
    - sudo
    - sshd
    - wpa_supplicant
  'G@os:Raspbian':
    - match: compound
    - pibootconfig
    - picore
  'G@roles:picam':
    - match: compound
    - motionmmal
    - picam
