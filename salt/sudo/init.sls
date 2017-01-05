sudo: 
  pkg.installed

{{ '/usr/local' if grains['kernel'] == 'FreeBSD' else '' }}/etc/sudoers:
  file.managed:
    - source: salt://sudo/files/sudoers.{{ grains['os'].lower() }}
    - user: root
    - groups: {{ pillar['admin_group']['ssh_group'] if grains['kernel'] == 'FreeBSD' else 'root' }}
    - mode: 440
    - require:
      - pkg: sudo
