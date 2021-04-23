# Vagrant / proxmox

Configuration Vagrant pour tester Proxmox :

## Configuration

Dans Vagrantfile, il est possible de configurer les machines :

```
# global configuration
BOX_BASE = "debian/buster64"
MASTER_BOX_CPU = "4"
MASTER_BOX_RAM_MB = "4096"
NB_MASTER_DATASTORE = 3 # Number of disque on master
DATASTORE_SIZE = 10 # Giga
# Number of node, NB_NODE : 0 < X < 100
NB_NODE = 1
NODE_RAM_MB = "2048"
NODE_CPU = "2"
```


## Init script

### Common (init.sh)

* add new entry in /etc/hosts

### Proxmox (init_proxmox.sh)

* install proxmox


## Launch

```
# vagrant up
```

## stop


```
# vagrant halt
```
