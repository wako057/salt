{% for user, uid in pillar.get('users', {}).items() %}
{{user}}:
  user.present:
    - uid: {{uid}}
    - gid: 1100
    - home: /home/users
    - groups: 
        - www-data
{% endfor %}
