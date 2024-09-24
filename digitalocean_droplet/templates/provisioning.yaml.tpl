#cloud-config
%{ if update }
package_update: true
%{ endif }

packages:
%{ for package in packages }
  - ${package}
%{ endfor }

groups:
%{ for group in users_info }
  - ${group.grupo}
%{ endfor }

users:
%{ for user in users_info }
  - name: ${user.nombre}
    gecos: ${user.desc}
    primary_group: ${user.grupo}
    lock_passwd: false
    shell: /bin/bash
%{ endfor }

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
