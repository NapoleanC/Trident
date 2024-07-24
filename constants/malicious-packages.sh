# Written by: Christopher Gholmieh
# Constants:
mallicious_packages=(
    # Postgresql:
    "postgresql"

    # LinuxdCPP:
    "linuxdcpp"

    # Pure-FTPd:
    "pure-ftpd-common"
    "pure-ftpd"

    # OpenSSH:
    "openssh-server"

    # ProFTPD:
    "proftpd-basic"

    # Apache:
    "apache2"
    "apache"

    # VSFTPD:
    "vsftpd"

    # MySQL:
    "mysql-server"

    # Nginx:
    "nginx"

    # Cups:
    "cups"

    # Aircrack:
    "aircrack-ng"
    "airgraph-ng"

    # Hydra:
    "hydra-gtk"
    "hydra"

    # John:
    "john-data"
    "john"

    # Parsero:
    "parsero"

    # Hashcat:
    "hashcat-data"
    "hashcat"

    # Beef-xss:
    "beef-xss"

    # Cryptsetup:
    "cryptsetup-initramfs"
    "cryptsetup-suspend"
    "cryptsetup-bin"
    "cryptsetup-ssh"
    "cryptsetup"

    "libcryptsetup-dev"
    "libcryptsetup12"

    # Gobuster:
    "gobuster"

    # Ettercap:
    "ettercap-text-only"
    "ettercap-graphical"
    "ettercap-common"

    # Maltego:
    "maltego"

    # Burpsuite:
    "burpsuite"

    # Wireshark:
    "libwireshark-data"
    "libwireshark-dev"
    "libwireshark17"
    "libwiretap-dev"
    "libwsutil-dev"
    "libwiretap14"
    "libwsutil15"

    "wireshark-common"
    "wireshark-dev"
    "wireshark-doc"
    "wireshark"
    "tshark"

    # Wifite:
    "wifite"

    # Nikto:
    "nikto"

    # Netdiscover:
    "netdiscover"

    # Crunch:
    "crunch"

    # Cewl:
    "cewl"

    # Villain:
    "villain"

    # WPScan:
    "wpscan"

    # Dirb:
    "dirb"

    # Responder:
    "responder"

    # Hping3:
    "hping3"

    # Sherlock:
    "sherlock"

    # Wordlists:
    "wordlists"

    # Autopsy:
    "autopsy"

    # Legion:
    "legion"

    # TCPDump:
    "tcpdump"

    # Fcrackzip:
    "fcrackzip"

    # Bloodhound:
    "bloodhound"

    # Firewalk:
    "firewalk"

    # Netcat:
    "netcat-traditional"
    "netcat"
    "nc"

    # DNSWalk:
    "dnswalk"

    # DNSenum:
    "dnsenum"

    # Arpwatch:
    "arpwatch"

    # Whatsweb:
    "whatsweb"

    # TheHarvester:
    "theharvester"

    # Spiderfoot:
    "spiderfoot"

    # Reaver:
    "reaver"

    # Veil:
    "veil-catapult"
    "veil-evasion"
    "veil"

    # Mimikatz:
    "mimikatz"

    # Impacket:
    "impacket-scripts"

    # Chntpw:
    "chntpw"

    # Yersinia:
    "yersinia"

    # Steghide:
    "steghide-doc"
    "steghide"

    # Koadic:
    "koadic"

    # Driftnet:
    "driftnet"

    # SQLMap:
    "sqlmap"

    # Scapy:
    "python3-scapy"
    "scapy"

    # Nuclei:
    "nuclei"

    # Macchanger:
    "macchanger"

    # Gophish:
    "gophish"

    # Ophcrack:
    "ophcrack-cli"
    "ophcrack-gtk"
    "ophcrack"

    # Pyrit:
    "pyrit"

    # Ffuf:
    "ffuf"

    # Evil-Winrm:
    "evil-winrm"

    # Binwalk:
    "python3-binwalk"
    "binwalk"

    # Bettercap:
    "bettercap"

    # Airgeddon:
    "airgeddon"

    # Zenmap-kbx:
    "zenmap-kbx"
    "zenmap"

    # Nmap:
    "ndiff"
    "ncat"
    "nmap-common"
    "nmap"

    # Sublist3r:
    "sublist3r"

    # Socat:
    "socket"
    "socat"
    "sock"
    "sbd"

    # Medusa:
    "medusa"

    # Kismet:
    "kismet-capture-capture-ti-cc-2540"
    "kismet-capture-hak5-wifi-coconut"
    "kismet-capture-linux-bluetooth"
    "kismet-capture-nrf-mousejack"
    "kismet-capture-ubertooth-one"
    "kismet-capture-rz-killerbee"
    "kismet-capture-linux-wifi"
    "kismet-capture-ti-cc-2531"
    "kismet-capture-nrf-52840"
    "kismet-capture-nrf-51822"
    "kismet-capture-nxp-kw41z"
    "kismet-capture-common"
    "kismet-logtools"
    "kismet-plugins"
    "kismet-core"
    "kismet"

    "python3-kismetcapturefreaklabszigbee"
    "python3-kismetcapturebtgeiger"
    "python3-kismetcapturertladsb"
    "python3-kismetcapturertl433"
    "python3-kismetcapturertlamr"

    # GHidra:
    "ghidra"

    # RARCrack:
    "rarcrack"

    # Sipcrack:
    "sipcrack"

    # Logkeys:
    "logkeys"

    # OpenBSD-Inetd:
    "openbsd-inetd"

    # LCrack:
    "lcrack"

    # Portmap:
    "portmap"

    # RPCBind:
    "rpcbind"

    # Eyewitness:
    "eyewitness"

    # DVWA:
    "dvwa"

    # Commix:
    "commix"

    # APKTool:
    "apktool"

    # Amass:
    "amass-common"
    "amass"

    # Tiger:
    "tiger-otheros"
    "tiger"

    # Subfinder:
    "subfinder"

    # Recon-ng:
    "recon-ng"

    # PDF-Parser:
    "pdf-parser"

    # Masscan:
    "masscan"

    # GoldenEye:
    "goldeneye"

    # Dnsrecon:
    "dnsrecon"

    # CrackMapExec:
    "crackmapexec"

    # Arp-Scan:
    "arp-scan"

    # Yara:
    "yara-doc"
    "yara"

    "libyara-dev"
    "libyara10"

    # Wifiphisher:
    "wifiphisher"

    # Wfuzz:
    "wfuzz"

    # Wapiti:
    "wapiti"

    # Uniscan:
    "uniscan"

    # Stegcracker:
    "stegcracker"

    # Shellter:
    "shellter"

    # Set:
    "set"

    # Scalpel:
    "scalpel"

    # Redeye:
    "redeye"

    # Pixiewps:
    "pixiewps"

    # NBTScan:
    "nbtscan"

    # Fern-Wifi-Cracker:
    "fern-wifi-cracker"

    # DSniff:
    "dsniff"

    # Dirbuster:
    "dirbuster"

    # Chisel:
    "chisel"

    # Armitage:
    "armitage"

    # Arjun:
    "arjun"

    # Powershell:
    "powershell"

    # DHCP Server:
    "isc-dhcp-server6"
    "isc-dhcp-server"

    # LDAP Server:
    "slapd"

    # NFS-Kernel-Server:
    "nfs-kernel-server"

    # DNS Server:
    "bind9"

    # IMAP & POP3 Server:
    "dovecot-core"
    "dovecot"

    "dovecot-imapd"
    "dovecot-pop3d"

    # HTTP Proxy:
    "squid"

    # SNMP Server:
    "snmpd"

    # Nis:
    "nis"

    # Rsync:
    "rsync"

    # Samba:
    "sambashare"
    "samba"

    # Miscellaneous:
    "rsh-redone-client"
    "ldap-utils"
    "rsh-client"
    "rpcbind"
    "telnetd"
    "rlogind"
    "telnet"
    "rexecd"
    "rbootd"
    "rstatd"
    "talk"
    "rshd"
    "rcmd"

    "sendmail"
    "fingerd"
    "rusersd"
    "rwalld"
    "tftpd"

    "tightvncserver"
    "x11vnc"
    "xinetd"
    "pop3"
    "php"
    "ftp"

    "remmina"

    # Games:
    "gnome-mahjongg"
    "gnome-sudoku"
    "gnome-mines"
    "aisleriot"
    "wesnoth"
)
