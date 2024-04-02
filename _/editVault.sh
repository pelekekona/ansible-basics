  export EDITOR=nano

  clear

# Create vault
# ansible-vault create group_vars/database/vault
# ansible-vault create group_vars/server/vault
# Edit vault
  ansible-vault edit group_vars/database/vault
  ansible-vault edit group_vars/server/vault
# Test variables
  ansible -m debug -a 'var=hostvars[inventory_hostname]' database
  ansible -m debug -a 'var=hostvars[inventory_hostname]' server
