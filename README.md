Overview
--------
Just some scripts to help setup tailscale nodes

Dependencies
------------
Python v3.11, check requirements.txt

Adding New Server
-----------------
 - Get public IP address
 - Add into ~/.ssh/config (NOTE: Maybe need to make a ssh config just for ansible)
 - TODOs
   - Exit node
   - Disable key expiry

Tips
----
 - Use this to debug network issues https://tailscale.com/kb/1411/device-connectivity and https://tailscale.com/kb/1257/connection-types
 - To edit the secrets.enc file, please use ansible-vault command
