#cloud-config
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
