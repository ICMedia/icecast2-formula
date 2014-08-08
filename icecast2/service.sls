icecast2-running:
  service:
    - running
    - name: {{ icecast2.service }}
    - enable: True
    - watch:
      - pkg: {{ icecast2.pkg }}
      - file: {{ icecast2.config }}
    - require:
      - pkg: {{ icecast2.pkg }}
