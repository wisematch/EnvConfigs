if status is-interactive
    # Commands to run in interactive sessions can go here
end




# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/wei/miniconda3/bin/conda
    eval /home/wei/miniconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<



# add for proxy
export hostip=(ip route | grep default | awk '{print $3}')
export hostport=10808

function proxy
    export HTTPS_PROXY="socks5://$hostip:$hostport";
    export HTTP_PROXY="socks5://$hostip:$hostport";
    export ALL_PROXY="socks5://$hostip:$hostport";
    echo -e "Acquire::http::Proxy \"http://$hostip:$hostport\";" | sudo tee -a /etc/apt/apt.conf.d/proxy.conf > /dev/null;
    echo -e "Acquire::https::Proxy \"http://$hostip:$hostport\";" | sudo tee -a /etc/apt/apt.conf.d/proxy.conf > /dev/null;
end

function unproxy
    unset HTTPS_PROXY;
    unset HTTP_PROXY;
    unset ALL_PROXY;
    sudo sed -i -e '/Acquire::http::Proxy/d' /etc/apt/apt.conf.d/proxy.conf;
    sudo sed -i -e '/Acquire::https::Proxy/d' /etc/apt/apt.conf.d/proxy.conf;
end
