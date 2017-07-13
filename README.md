### enable ssh autostart (raspbian)
```bash
$ sudo update-rc.d ssh enable
```

### install ansible (raspbian)

```bash
$ sudo ./install-ansible.sh
```

### run playbook with:

```bash
$ sudo ./run-playbook.sh
```

### docker hints

https://hub.docker.com/r/dastrasmue/rpi-samba/

```bash
docker run -d -p 137:137/udp -p 138:138/udp -p 139:139 -p 445:445 -p 445:445/udp --restart='always' --hostname 'pi-samba' -v /opt/smbtest:/share/stick --name samba dastrasmue/rpi-samba:v3 -u "roberthass:swordfish" -s "roberts share:/share/stick:rw:roberthass"

docker run -d -p 137:137/udp -p 138:138/udp -p 139:139 -p 445:445 -p 445:445/udp --restart='always' --hostname 'pi-samba' -v /mnt/store:/share --name samba dastrasmue/rpi-samba:v3 -u "roberthass:swordfish" -s "roberts share:/share:rw:roberthass"

docker run -d --name my-go-git-server --publish 8022:22 --publish 3000:3000 --volume /opt/smbtest/gogs-data/:/data hypriot/rpi-gogs-raspbian
```





sudo docker exec -i -t <<container_name>> /bin/bash
