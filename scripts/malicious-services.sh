# Written by: Christopher Gholmieh
# Sources:

. ./constants/malicious-services.sh

. ./utilities/prompter.sh
. ./utilities/services.sh

# Functions:
function main() {
    for malicious_service in "${malicious_services[@]}"; do
        if [[ $(is_service_enabled "${malicious_service}") == "1" ]]; then
            if [[ $(prompt "Would you like to disable and mask the service ${malicious_service}? [y/N]: ") == "1" ]]; then
                systemctl stop "${malicious_service}.socket" "${malicious_service}.service"
                systemctl mask "${malicious_service}.socket" "${malicious_service}.service"
            fi
        fi
    done
}

# Main:
main