# Written by: Christopher Gholmieh
# Sources:

. ./constants/secure-shell-parameters.sh

. ./utilities/packages.sh
. ./utilities/prompter.sh
. ./utilities/services.sh

# Functions:
function main() {
    if [[ $(is_package_installed "openssh-server") == "0" ]]; then
        echo "OpenSSH Server is not installed.. skipping configuration process."
    else
        echo "Configuring OpenSSH Server.."

        temporary = $(mktemp) || echo { echo "Failed to create a temporary file."; return 1; }

        for secure_shell_parameter in "${!secure_shell_parameters[@]}"; do
            echo "${secure_shell_parameter}" = "${secure_shell_parameters[${secure_shell_parameter}]}" >> "${temporary}"
        done

        if [[ $(prompt "Check /etc/ssh/sshd_config and make there is nothing important. Would you like to override the settings with more secure parameters? [y/N]: ") == "1" ]]; then
            if ! mv "${temporary}" /etc/ssh/sshd_config; then
                echo "Failed to override /etc/ssh/sshd_config"

                rm "${temporary}"
                return 1
            fi
        fi

        if [[ $(is_service_enabled "ssh" ) == "0" ]]; then
            systemctl enable --now ssh
        else
            systemctl reload ssh
        fi
    fi
}

# Main:
main