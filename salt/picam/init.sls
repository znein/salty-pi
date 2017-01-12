# Create scripts directory
/usr/share/scripts:
  file.directory:
    - user: root
    - group: root
    - mode: 644
    - makedirs: True 

# File move script
/usr/share/scripts/mv-avi-jpg-recordings:
  file.managed:
    - source: salt://picam/files/scripts/mv-avi-jpg-recordings
    - user: root
    - group: root
    - mode: 744

include:
  - .cron
