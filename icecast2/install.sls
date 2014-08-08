{% from "icecast2/map.jinja" import icecast2 with context %}

icecast2-package:
  pkg:
    - installed
    - name: {{ icecast2.pkg }}
