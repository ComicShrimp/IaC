# Ansible tutorials

## First Command

To check if ansible is working you can ping in all hosts using the following command

`ansible -m ping all`

## Command structure

`ansible -m <MODULO> -a <PARAMETRO> <HOSTS>`

or

`ansible <HOSTS> -m <MODULO> -a <PARAMETRO>`

**Note:** for a complete list of modules visit https://docs.ansible.com/ansible/latest/index.html
## `apt` module

This module simply run apt. the example code is

`ansible <HOST> -m apt -a "name=ncdu state=present update_cache=yes" --become`

## `setup` module

Retrieve all informations about the hosts.

`ansible <HOST> -m setup`

If you want to filter the infos

`ansible <HOST> -m setup -a "filter=ansible_distribution"`