motion_dependencies:
  pkg.installed:
    - pkgs:
      - libjpeg-dev
      - libavformat56
      - libavcodec56
      - libavcodec-dev
      - libavutil54
      - libavutil-dev
      - libc6-dev
      - zlib1g-dev
      - libmysqlclient18
      - libmysqlclient-dev
      - libpq5
      - libpq-dev

include:
  - .motion
  - .config
  - .initd
