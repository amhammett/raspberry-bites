raspberry-vpn
=============

set-hostname.yml
--------------------

while not vpn related this does make things easier when setting up a
vpn host

### how to run

```bash
    go-set-hostname.sh
```

### how it works

1. update-hosts-file
2. change-hostname-file
3. restart-pi

configure-vpn-service.yml
-------------------------

configure target server for vpn service

### how to run

```bash
    go-configure-vpn-service.sh
```

### how it works

the first implementation of this playbook should:

1. install required packages
2. configure host for vpn connection
3. connect to vpn
4. verify vpn connection
5. configure health check cron


vpn-service.yml
---------------

start/stop vpn service

### how to run

```bash
    go-vpn-service-start.sh
```

```bash
    go-vpn-service-stop.sh
```

This is a fairly simple playbook that connects to target host and runs service

configure-dns-service.yml
-------------------------

configure target server to install and configure a dns service.

### how to run

```bash
    go-configure-dns-service.sh
```

todo
----

- cron configuration needs to be 

```bash
    crontab -e
    */10 * * * * ~/bin/connect-to-vpn.sh
```
