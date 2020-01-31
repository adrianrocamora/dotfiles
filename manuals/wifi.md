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
  ssid="INFINITUMCF04_5"
  scan_ssid=1
  psk="santiago2019"
  key_mgmt=WPA-PSK
  proto=WPA
  pairwise=TKIP
  group=TKIP
:qa
}
```
