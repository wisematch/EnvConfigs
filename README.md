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
1. Install [V2rayN V3.29](https://github.com/2dust/v2rayN/releases/download/3.29/v2rayN-Core.zip)
2. Download Proxy config or update new rules through [this repo.](https://github.com/Loyalsoldier/v2ray-rules-dat)

## Font
Install [Source Han Serif](https://source.typekit.com/source-han-serif/cn/) and [Code New Roman](https://www.dafont.com/code-new-roman.font).

## Some Application Settings
Pycharm: Sync via account.
Edge: Sync via account.
Windows Terminal: In `WinTerminal`.


