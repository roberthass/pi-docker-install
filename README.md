### install ansible under ubuntu with:

```bash
$ sudo apt-add-repository ppa:ansible/ansible
$ sudo apt-get update
$ sudo apt-get install ansible
```

### run playbook with:

```bash
$ sudo ansible-playbook -i "localhost," -c local pi-docker-install.yml
```
