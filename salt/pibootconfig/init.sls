# RPI3 Boot Config with OC 
/boot/config.txt:
  file.managed:
    - source: salt://pibootconfig/files/boot/config.txt
    - user: root
    - group: root
    - mode: 755
