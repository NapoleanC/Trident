# Written by: Christopher Gholmieh
# Functions:
function is_service_installed() {
    if systemctl list-unit-files | grep -q "$1"; then
        echo "1"
    else
        echo "0"
    fi
}

function is_service_enabled() {
    if [[ $(is_service_installed "$1") == "1" ]]; then
        if systemctl is-enabled "$1" | grep -q "enabled"; then
            echo "1"
        else
            echo "0"
        fi
    else
        echo "0"
    fi
}