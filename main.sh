# Written by: Christopher Gholmieh
# Sources:

. ./utilities/prompter.sh

# Functions:
function main() {
    if [[ "$EUID" != "0" ]]; then
        echo "[-] Please run this script as root." && exit
    fi

    if [[ $(prompt "[*] Would you like to run the filesystem-kernel-modules script? [y/N]: ") == "1" ]]; then
        ./scripts/filesystem-kernel-modules.sh
    fi

    if [[ $(prompt "[*] Would you like to run the filesystem-partitions script? [y/N]: ") == "1" ]]; then
        ./scripts/filesystem-partitions.sh
    fi

    if [[ $(prompt "[*] Would you like to run the kernel-parameters script? [y/N]: ") == "1" ]]; then
        ./scripts/kernel-parameters.sh
    fi

    if [[ $(prompt "[*] Would you like to run the banners script? [y/N]: ") == "1" ]]; then
        ./scripts/banners.sh
    fi

    if [[ $(prompt "[*] Would you like to run the malicious-packages script? [y/N]: ") == "1" ]]; then
        ./scripts/malicious-packages.sh
    fi

    if [[ $(prompt "[*] Would you like to run the malicious-services script? [y/N]: ") == "1" ]]; then
        ./scripts/malicious-services.sh
    fi

    if [[ $(prompt "[*] Would you like to run the uncomplicated-firewall script? [y/N]: ") == "1" ]]; then
        ./scripts/uncomplicated-firewall.sh
    fi

    if [[ $(prompt "[*] Would you like to run the secure-shell-parameters script [y/N]: ") == "1" ]]; then
        ./scripts/secure-shell-parameters.sh
    fi
}

# Main:
main