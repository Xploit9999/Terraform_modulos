#cloud-config
%{~ if update ~}
package_update: true
%{~ endif ~}

packages:
%{~ for package in packages ~}
  - ${package}
%{~ endfor ~}

groups:
%{~ for group in users_info ~}
  - ${group.grupo}
%{~ endfor ~}

write_files:
  - content: |
      ola khe ase
    path: /holi.txt
    owner: root
    permissions: '0600'

  - content: |
      export TERM=vt100
    path: /etc/profile
    append: true
