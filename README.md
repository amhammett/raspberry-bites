raspberry-vpn
=============

configure-vpn-service.yml
-------------------------

configure target server for vpn service

```bash
    go-configure-vpn-service.sh
```

the first implementation of this playbook should:

1. install required packages
2. configure host for vpn connection
3. connect to vpn
4. verify vpn connection
5. configure health check cron


vpn-service.yml
---------------

start/stop vpn service

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
