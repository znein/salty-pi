# Create recording directory
/home/testacct/recordings:
  file.directory:
    - user: testacct
    - group: testacct
    - mode: 755
    - makedirs: True 

# Current Running Config
/etc/motion.conf:
  file.managed:
    - source: salt://motionmmal/files/etc/motion.conf
    - user: root
    - group: root
    - mode: 644

# Daytime Config
#/etc/motion.day:
#  file.managed:
#    - source: salt://motionmmal/files/etc/motion.day
#    - user: root
#    - group: root
#    - mode: 644

# Nighttime Config
#/etc/motion.night:
#  file.managed:
#    - source: salt://motionmmal/files/etc/motion.night
#    - user: root
#    - group: root
#    - mode: 644
