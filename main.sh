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
}

# Main:
main