Overview
--------
Just some scripts to help setup tailscale nodes

Dependencies
------------
Python v3.11, check requirements.txt, install into `venv/` folder

Setup New Server
----------------
```
$ HOST=awsuseast1 make setup
```

Adding New Server
-----------------
 - Get public IP address
 - Add into ~/.ssh/config (NOTE: Maybe need to make a ssh config just for ansible?)
 - Disable key expiry in Tailscale portal

Tips
----
 - Use this to debug network issues https://tailscale.com/kb/1411/device-connectivity and https://tailscale.com/kb/1257/connection-types
 - To edit the secrets.enc file, please use `ansible-vault` command

Gitlab
------
You can use `gitlab-ci-local` to test Gitlab pipelines and jobs

Shadowsocks
-----------
If you want TLS support for Shadowsocks, we need to generate a cert for the relevant domain.

```
~/.acme.sh/acme.sh --issue --dns dns_aws -d <DOMAIN_NAME> --log --server letsencrypt
```
