# ansible-vault create _/secret_key
# ansible-vault view _/secret_key

# ansible --ask-vault-pass -bK -m copy -a \
#   'src=_/secret_key dest=/tmp/secret_key mode=0600 owner=root group=root' mars

# ansible --vault-password-file=~/.ansibleVaultPass -bK -m copy -a \
#   'src=_/secret_key dest=/tmp/secret_key mode=0600 owner=root group=root' mars

# export ANSIBLE_VAULT_PASSWORD_FILE=~/.ansibleVaultPass

# ansible -bK -m copy -a \
#   'src=_/secret_key dest=/tmp/secret_key mode=0600 owner=root group=root' mars

# ansible.cfg: vault_password_file = ~/.ansibleVaultPass

  ansible -bK -m copy -a \
    'src=_/secret_key dest=/tmp/secret_key mode=0600 owner=root group=root' mars
