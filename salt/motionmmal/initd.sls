# Configure
/etc/init.d/motion:
  file.managed:
    - source: salt://motionmmal/files/etc/init.d/motion
    - user: root
    - group: root
    - mode: 755
