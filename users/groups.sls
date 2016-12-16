{% for groupname, gid in pillar.get('groups', {}).items() %}
{{groupname}}:
    group.present:
        - name: {{ groupname }}
        - gid: {{ gid }}
{% endfor %}
