{% from "icecast2/map.jinja" import icecast2 with context %}

include:
  - icecast2.install
  - icecast2.config
  - icecast2.service

icecast2:
  service:
    - running
    - name: {{ icecast2.service }}
    - enable: True
