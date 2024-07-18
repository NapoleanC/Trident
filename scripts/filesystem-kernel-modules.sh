# Written by: Christopher Gholmieh
# Sources:
. ./constants/filesystem-kernel-modules.sh

# Functions:
function main() {
    for filesystem_kernel_module in "${filesystem_kernel_modules[@]}"; do
        if [ ! -f "/etc/modprobe.d/${filesystem_kernel_module}" ]; then
            touch "/etc/modprobe.d/${filesystem_kernel_module}"

            echo "install ${filesystem_kernel_module} /bin/false" >> "/etc/modprobe.d/${filesystem_kernel_module}"
            echo "blacklist ${filesystem_kernel_module}" >> "/etc/modprobe.d/${filesystem_kernel_module}"
        fi
    done
}

# Main:
main