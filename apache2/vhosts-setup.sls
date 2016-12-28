{% for vhost, state in pillar.get('registered-site', {}).items() %}

  {% if grains['os_family']=="Debian" %}

    {% if state == 'enabled'  %}
      {% set a2modsitecmd = "a2ensite " ~ vhost %}
    {% else %}
      {% set a2modsitecmd = "a2dissite " ~ vhost %}
    {% endif %}

{{ a2modsitecmd }}:
  cmd.run:
    {% if state == 'enabled' %}
    - unless: test -f /etc/apache2/sites-enabled/{{ vhost }}.conf
    {% else %}
    - onlyif: test -f /etc/apache2/sites-enabled/{{ vhost }}.conf
    {% endif %}
#    - require:
#      - pkg: apache2
#        - file: /etc/apache2/sites-available/{{ vhost }}.conf

  {% endif  %}
{% endfor %}
