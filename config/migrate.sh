#!/bin/sh

vault status

vault operator init -key-shares=1 -key-threshold=1 > vault-operator-init.txt

cat vault-operator-init.txt 

export VAULT_ROOT_TOKEN=$(cat vault-operator-init.txt | grep '^Initial' | awk '{print $4}')

export VAULT_UNSEAL_KEY=$(cat vault-operator-init.txt | grep '^Unseal Key 1' | awk '{print $4}')

vault operator unseal $VAULT_UNSEAL_KEY

vault login $VAULT_ROOT_TOKEN

vault status



# vault operator raft snapshot save /tmp/backup.snap


vault operator migrate -config migrate.hcl