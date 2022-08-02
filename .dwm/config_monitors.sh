export DISPLAY=:0
export XAUTHORITY=/home/leonardo/.Xauthority

function connect() {
    xrandr --output HDMI-1 --right-of eDP-1 --primary 2>&1 >> /tmp/udev.log
}

function disconnect() {
    xrandr --output HDMI-1 --off 2>&1 >> /tmp/udev.log
}

echo "Configuring monitors... $(/usr/bin/date)" >> /tmp/udev.log
