## Arch linux on Host: Inspiron 3443 A01

We've been having some issues setting up wifi. Ethernet works out of the box as expected though

```
sudo ip link set wlp6s0 up
```

➜  ~ iw dev
phy#0
        Interface wlp6s0
                ifindex 3
                wdev 0x1
                addr c0:38:96:5c:97:7f
                type managed
                txpower 0.00 dBm
                multicast TXQ:
                        qsz-byt qsz-pkt flows   drops   marks   overlmt hashcol tx-bytes    t
x-packets
                        0       0       0       0       0       0       0       0           0
➜  ~

ip link show wlp6s0
sudo iw dev wlp6s0 connect SFR_1970
sudo wpa_supplicant -i wlp6s0 -c /etc/wpa_supplicant/wpa_supplicant.conf 
ctrl_interface=/run/wpa_supplicant
#update_config=1
ctrl_interface_group=0
eapol_version=2
ap_scan=1
fast_reauth=1
network={
  ssid="NAME"
  scan_ssid=1
  psk="PASS"
  key_mgmt=WPA-PSK
  proto=WPA
  pairwise=TKIP
  group=TKIP
:qa
}
```
# Later tests that actually worked

Installing broadcom-wl (or maybe broadcom-wl-dkms but I think it didn't succeed) was part of the requirements for this laptop series according to the wiki

I also updated the wpa_supplicant file to the following:
```
ctrl_interface=/run/wpa_supplicant
#update_config=1
#ctrl_interface_group=0
#eapol_version=2
#ap_scan=1
#fast_reauth=1
network={
  ssid="NAME"
  scan_ssid=1
  psk="PASS"
  key_mgmt=WPA-PSK
  proto=WPA
  pairwise=TKIP
  group=TKIP
}
```
Seems like the interface being up could also have been part of the issue, the error was:
```
Feb 01 20:19:14 isla network[860]: The interface of network profile 'wlp6s0-INFINITUMCF04_2.4' is already up
```

The sessions history is as follows:
``` 
 2235  sudo reboot
 2236  startx
 2237  sudo wifi-menu
 2239  systemctl status netctl@wlp6s0\\x2dINFINITUMCF04_2.4.service
 2240  ip link
 2241  nvim /etc/wpa_supplicant/wpa_supplicant.conf
 2242  sudo nvim /etc/wpa_supplicant/wpa_supplicant.conf
 2243  systemctl status netctl@wlp6s0\\x2dINFINITUMCF04_2.4.service
 2244  iwconfig
 2245  ip link set wlp6s0 up
 2246  sudo ip link set wlp6s0 up
 2247  iwconfig
 2248  iwlist interface scan | less
 2249  iwlist wlp6s0 scan | less
 2250  iwlist wlp6s0 scan 
 2251  ip link set wlp6s0 down
 2252  sudo ip link set wlp6s0 down
 2253  lspci -k
 2254  lspci -k | less
 2255  sudo wifi-menu
``` 

After a reboot it didn't work out of the box but the following commands fixed it:
```
 2262  ip link
 2263  sudo wifi-menu
 2264  ip link set wlp6s0 down
 2265  sudo ip link set wlp6s0 down
 2266  sudo wifi-menu
```

Now we just remove the network info from the wpa_supplicant file and do a final reboot and try the following:
 ```
 sudo ip link set wlp6s0 down
 sudo wifi-menu
 ```
