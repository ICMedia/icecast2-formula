{% from "icecast2/map.jinja" import icecast2 with context %}

include:
  - icecast2.install
  - icecast2.config
  - icecast2.service
