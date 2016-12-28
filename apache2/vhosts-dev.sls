{% if grains['os_family']=="Debian" %}

include:
  - apache2

#vhosts-dev:
#    service.running:
#        - require:
#          - pkg: apache
#        - watch:
#            - pkg: apache
#            - user: www-data
#            - file: /etc/apache2/sites-available/dev.conf
#            - file: /etc/apache2/sites-available/affil4youdev.conf
#            - file: /etc/apache2/sites-available/devextranet.conf
#            - file: /etc/apache2/sites-available/devpartners.conf
#            - file: /etc/apache2/sites-available/devredirect.conf
#            - file: /etc/apache2/sites-available/devsandbox.conf
#            - file: /etc/apache2/sites-available/devwispay.conf
#            - file: /etc/apache2/sites-available/devxtrem.conf

/etc/apache2/sites-available/dev.conf:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - source: salt://apache2/files/sites-available/dev.conf
    - require: 
        - pkg: apache

/etc/apache2/sites-available/affil4youdev.conf:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - source: salt://apache2/files/sites-available/affil4youdev.conf
    - require: 
        - pkg: apache

/etc/apache2/sites-available/devextranet.conf:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - source: salt://apache2/files/sites-available/devextranet.conf
    - require: 
        - pkg: apache


/etc/apache2/sites-available/devpartners.conf:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - source: salt://apache2/files/sites-available/devpartners.conf
    - require: 
        - pkg: apache

/etc/apache2/sites-available/devredirect.conf:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - source: salt://apache2/files/sites-available/devredirect.conf
    - require: 
        - pkg: apache

/etc/apache2/sites-available/devsandbox.conf:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - source: salt://apache2/files/sites-available/devsandbox.conf
    - require: 
        - pkg: apache

/etc/apache2/sites-available/devwispay.conf:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - source: salt://apache2/files/sites-available/devwispay.conf
    - require: 
        - pkg: apache


/etc/apache2/sites-available/devxtrem.conf:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - source: salt://apache2/files/sites-available/devxtrem.conf
    - require: 
        - pkg: apache

{% endif %}


