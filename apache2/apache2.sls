apache2:
    pkg.installed: []
    service.running:
        - watch:
            - pkg: apache2
            - file: /etc/apache2/apache2.conf
            - user: www-data
    user.present:
        - uid: 33
        - gid: 33
        - home: /var/www
        - shell: /usr/sbin/nologin
        - require:
            - group: www-data

