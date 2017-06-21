#!/bin/bash
ansible-playbook -i "localhost," -c local ansible/pi-docker-install.yml
