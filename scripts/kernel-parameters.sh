# Written by: Christopher Gholmieh
# Sources:
. ./constants/kernel-parameters.sh

# Functions:
function main() {
    echo "" > /etc/sysctl.conf

    for kernel_parameter in "${!kernel_parameters[@]}"; do
        echo "${kernel_parameter} = ${kernel_parameters[$kernel_parameter]}" >> /etc/sysctl.conf
    done

    sysctl -p
}

# Main:
main