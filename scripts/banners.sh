# Written by: Christopher Gholmieh
# Sources:

# Functions:
function main() {
    echo "Authorized users only. All activity may be monitored and reported." > /etc/issue.net
    echo "Authorized users only. All activity may be monitored and reported." > /etc/issue
    echo "Authorized users only. All activity may be monitored and reported." > /etc/motd

    chown root:root $(readlink -e /etc/issue.net)
    chmod u-x,go-wx $(readlink -e /etc/issue.net)

    chown root:root $(readlink -e /etc/issue)
    chmod u-x,go-wx $(readlink -e /etc/issue)

    chown root:root $(readlink -e /etc/motd)
    chmod u-x,go-wx $(readlink -e /etc/motd)
}

# Main:
main