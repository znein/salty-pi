# Ensure cron is present for lite version
/var/spool/cron/crontabs/root:
  file.managed:
    - create: True
    - user: root
    - group: root
    - mode: 600

# Move all recordings
2330picam-mv-avi-jpg-recordings:
  cron.present:
    - name: '/usr/share/scripts/mv-avi-jpg-recordings > /dev/null 2>&1'
    - user: root
    - minute: 30
    - hour: 23
    - identifier: 2330picam-mv-avi-jpg-recordings
# Move anything recorded after the big move
2359picam-mv-avi-jpg-recordings:
  cron.present:
    - name: '/usr/share/scripts/mv-avi-jpg-recordings > /dev/null 2>&1'
    - user: root
    - minute: 59
    - hour: 23
    - identifier: 2359picam-mv-avi-jpg-recordings
