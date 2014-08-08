icecast2-config:
  file:
    - managed
    - name: {{ icecast2.config }}
    - template: jinja
    - user: {{ icecast2.user }}
    - group: {{ icecast2.group }}
    - mode: 440
    - source: salt://icecast2/templates/config.jinja
    - require:
      - pkg: {{ icecast2.pkg }}
