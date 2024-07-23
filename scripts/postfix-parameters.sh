# Written by: Christopher Gholmieh
# Sources:

. ./utilities/packages.sh
. ./utilities/prompter.sh

# Functions:
function main() {
    if [[ $(is_package_installed "postfix" ) != "1" ]]; then
        echo "[-] Postfix not installed.. skipping the postfix-parameters script."
    else
        echo "[*] Configuring /etc/postfix/main.cf .."

        temporary=$(mktemp) || { echo "Failed to create a temporary file."; return 1; }

        for postfix_parameter in "${!postfix_parameters[@]}"; do
            echo "${postfix_parameter}" = "${postfix_parameters[${postfix_parameter}]}" >> "${temporary}"
        done

        apt install postgrey

        for postfix_postgrey_parameter in "${!postfix_postgrey_parameters[@]}"; do
            echo "${postfix_postgrey_parameters}" = "${postfix_postgrey_parameters[${postfix_postgrey_parameter}]}" >> "${temporary}"
        done

        echo "[*] Done configuring /etc/postfix/main.cf .."

        systemctl restart postfix
    fi
}

# Main:
main