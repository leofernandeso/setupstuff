while true; do
    xsetroot -name "$(cat /sys/class/power_supply/BAT0/capacity)% | $(date +"%F %R")"
    sleep 1m    # Update status bar every minute
done
