# Written by: Christopher Gholmieh
# Sources:

# Functions:
function main() {
    apt install -y rkhunter clamav clamtk lynis

    echo "[*] Running rootkit hunter.."

    rkhunter --update --propupd
    rkhunter --check

    echo "[*] Running clamscan.."

    freshclam
    clamscan -r -z -i --bell /

    echo "[*] Running lynis.."
    lynis audit system >> ./logs/lynis.log
}

# Main:
main