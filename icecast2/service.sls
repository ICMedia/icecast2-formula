{% from "icecast2/map.jinja" import icecast2 with context %}

{% if icecast2.defaults %}
icecast2-enabled:
  file.replace:
    - name: {{ icecast2.defaults }}
    - pattern: '^ENABLE=.*$'
    - repl: 'ENABLE=true'
    - append_if_not_found: true
{% endif %}

icecast2-running:
  service:
    - running
    - name: {{ icecast2.service }}
    - enable: True
    # avoid restarting icecast2 if at all possible
    - reload: True
    - sig: {{ icecast2.exe }}
    - watch:
      - pkg: {{ icecast2.pkg }}
      - file: {{ icecast2.config }}
{% if icecast2.defaults %}
      - file: {{ icecast2.defaults }}
{% endif %}
    - require:
      - pkg: {{ icecast2.pkg }}
