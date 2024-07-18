# Written by: Christopher Gholmieh
# Sources:

. ./constants/malicious-packages.sh

. ./utilities/packages.sh
. ./utilities/prompter.sh

# Functions:
function main() {
    for malicious_package in "${mallicious_packages[@]}"; do
        if [[ $(is_package_installed "${malicious_package}") == "1" ]]; then
            if [[ $(prompt "Would you like to remove ${malicious_package}? [y/N]: ") == "1" ]]; then
                apt remove "${malicious_package}"
            fi
        fi
    done
}

# Main:
main