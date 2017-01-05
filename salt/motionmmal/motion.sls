# Raspberry Pi - Modded MMAL
/usr/bin/motion:
  file.managed:
    - source: salt://motionmmal/files/usr/bin/motion
    - user: root
    - group: root
    - mode: 755

# Service Daemon
/etc/default/motion:
  file.managed:
    - source: salt://motionmmal/files/etc/default/motion
    - user: root
    - group: root
    - mode: 644

# Service
#motion_service:
#  service.running:
#    - name: motion
#    - enable: True
#    - watch:
#      - file: /usr/bin/motion
