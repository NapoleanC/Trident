# Written by: Christopher Gholmieh
# Sources:

# Functions:
function main() {
    chmod u-x,go-wx /etc/passwd
    chown root:root /etc/passwd

    chown u-x,go-wx /etc/passwd-
    chown root:root /etc/passwd-

    chown u-x,go-wx /etc/group
    chown root:root /etc/group

    chown u-x,go-wx /etc/group-
    chown root:root /etc/group-

    chown root:shadow /etc/shadow
    chmod u-x,g-wx,o-rwx /etc/shadow

    chown root:shadow /etc/shadow-
    chmod u-x,g-wx,o-rwx /etc/shadow-

    chown root:shadow /etc/gshadow
    chmod u-x,g-wx,o-rwx /etc/gshadow

    chown root:shadow /etc/gshadow-
    chmod u-x,g-wx,o-rwx /etc/gshadow-

    chmod u-x,go-wx /etc/shells
    chown root:root /etc/shells

    [ -e "/etc/security/opasswd" ] && chmod u-x,go-rwx /etc/security/opasswd
    [ -e "/etc/security/opasswd" ] && chown root:root /etc/security/opasswd

    [ -e "/etc/security/opasswd.old" ] && chmod u-x,go-rwx /etc/security/opasswd.old
    [ -e "/etc/security/opasswd.old" ] && chown root:root /etc/security/opasswd.old
}

# Main:
main