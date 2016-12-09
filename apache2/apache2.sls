apache2:
    pkg.installed: []
    service.running:
        - watch:
            - pkg: apache2
            - file: /etc/apache2/apache2.conf
            - user: www-data
    user.present:
        - name: www-data
        - uid: 33
        - gid: 33
        - home: /var/www
        - shell: /usr/sbin/nologin
        - require:
            - group: www-data
    group.present:
        - name: www-data
        - gid: 33
        - require:
            - pkg: apache2

/etc/apache2/apache2.conf:
    file.managed:
        - source: salt://apache2/apache2.conf
        - user: root
        - group: root
        - mode: 644
