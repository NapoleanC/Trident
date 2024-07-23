# Written by: Christopher Gholmieh
# Sources:

. ./utilities/packages.sh

# Functions:
function main() {
    if [[ $(is_package_installed "usbguard") != "1" ]]; then
        apt install usbguard
    fi

    usbguard generate-policy > /tmp/rules.conf
    install -m 0600 -o root -g root /tmp/rules.conf /etc/usbguard/rules.conf

    systemctl enable --now usbguard.service

    systemctl status usbguard.service --no-pager
    echo
}

# Main:
main