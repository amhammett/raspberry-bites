raspberry-vpn
=============

configure-vpn-service.yml
-------------------------

configure target server for vpn service

```bash
    go-configure-vpn-service.sh
```

the first implementation of this playbook should:

1. configure host
2. connect to vpn
3. verify vpn connection
4. disconnect to vpn

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