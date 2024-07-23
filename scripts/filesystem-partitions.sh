# Written by: Christopher Gholmieh
# Sources:
. ./constants/filesystem-partitions.sh

# Functions:
function main() {
    for filesystem_partition in "${filesystem_partitions[@]}"; do
        echo "${filesystem_partition}" >> /etc/fstab
    done

    mv /var/tmp /var/tmpold
    ln -s /tmp /var/tmp
    cp -prf /var/tmpold/* /tmp/
}

# Main:
main