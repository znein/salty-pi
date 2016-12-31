{% set admin_group = 'admin' if grains['os'] == 'Raspbian' else 'wheel' %}
{% set ssh_group = 'sshdx' %}

admin_group: {{ admin_group }}
ssh_group: {{ ssh_group }}

userdata:
  testacct:
    fullname: testacct
    password: ##########
    groups:
      - {{ admin_group }}
      - {{ ssh_group }}
