# EnvConfigs
Environment Configs

## Fish
1. Install Fish
```
sudo apt-get install -y fish
chsh -s /usr/bin/fish
``` 
2. Download Fish config and place it in `~/.config`, check Conda path
3. For WSL, add proxy configs
```
sudo rm /etc/resolv.conf
sudo bash -c 'echo "nameserver 8.8.8.8" > /etc/resolv.conf'
sudo bash -c 'echo "[network]" > /etc/wsl.conf'
sudo bash -c 'echo "generateResolvConf = false" >> /etc/wsl.conf'
sudo chattr +i /etc/resolv.conf
```

## Proxy
1. Install V2rayN [https://github.com/2dust/v2rayN/releases]
2. Update Rules [https://github.com/Loyalsoldier/v2ray-rules-dat]
