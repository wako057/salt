vim:
    pkg.installed:
        - name: {{ pillar['pkgs']['vim'] }}

/etc/vim/vimrc:
    file.managed:
        - source: {{ pillar['vimrc'] }}
        - mode: 644
        - user: root
        - group: root

/usr/share/vim/vim74/syntax/yaml.vim:
    file.managed:
        - source: salt://edit/yaml.vim
        - mode: 644
        - user: root
        - group: root
