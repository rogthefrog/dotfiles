# Network Settings for VMs

## Finding Windows Hosts by Name from Linux VM

Context:

* Linux guest in VM
* Windows hosts on the same LAN
* Network adapter set to `NAT` in VMWare settings
* You want to ping, ssh, smb, etc Windows hosts by name


1. install samba and related name resolution utilities:

```
sudo apt install samba-winbind nmbd samba net-tools
```

2. set the resolution order in `/etc/nsswitch.conf`:

```
hosts:  files winbind dns mdns4_minimal [NOTFOUND=return] myhostname
```

3. prevent NetworkManager from overwriting your `resolv.conf` on start:

In `/etc/NetworkManager/NetworkManager.conf`, add `dns=none` to the `[main]` section.

Then `sudo systemctl restart network-manager`

[Reference](https://askubuntu.com/questions/623940/network-manager-how-to-stop-nm-updating-etc-resolv-conf)