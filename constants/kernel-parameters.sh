# Written by: Christopher Gholmieh
# Constants:
declare -A kernel_parameters=(
    # Filesystem Tweaks:
    ["fs.protected_regular"]="2"
    ["fs.protected_fifos"]="2"
    ["fs.suid_dumpable"]="0"

    # Kernel Tweaks:
    ["kernel.unprivileged_bpf_disabled"]="1"
    ["kernel.perf_event_paranoid"]="3"
    ["kernel.randomize_va_space"]="2"
    ["kernel.yama.ptrace_scope"]="1"
    ["kernel.modules_disabled"]="1"
    ["kernel.dmesg_restrict"]="1"
    ["kernel.kptr_restrict"]="2"
    ["kernel.ctrl-alt-del"]="0"
    ["kernel.exec-shield"]="1"
    ["kernel.sysrq"]="0"

    # IPv6 Tweaks:
    ["net.ipv6.conf.default.accept_source_route"]="0"
    ["net.ipv6.conf.all.accept_source_route"]="0"

    ["net.ipv6.conf.default.disable_ipv6"]="1"
    ["net.ipv6.conf.all.disable_ipv6"]="1"
    ["net.ipv6.conf.lo.disable_ipv6"]="1"

    ["net.ipv6.conf.default.accept_redirects"]="0"
    ["net.ipv6.conf.all.accept_redirects"]="0"

    ["net.ipv6.conf.default.accept_ra"]="0"
    ["net.ipv6.conf.all.accept_ra"]="0"

    ["net.ipv6.conf.all.forwarding"]="0"

    # IPv4 Tweaks:
    ["net.ipv4.conf.default.accept_source_route"]="0"
    ["net.ipv4.conf.all.accept_source_route"]="0"

    ["net.ipv4.icmp_ignore_bogus_error_responses"]="1"
    ["net.ipv4.icmp_echo_ignore_broadcasts"]="1"

    ["net.ipv4.conf.default.secure_redirects"]="0"
    ["net.ipv4.conf.all.secure_redirects"]="0"

    ["net.ipv4.conf.default.accept_redirects"]="0"
    ["net.ipv4.conf.all.accept_redirects"]="0"

    ["net.ipv4.conf.default.send_redirects"]="0"
    ["net.ipv4.conf.all.send_redirects"]="0"

    ["net.ipv4.conf.default.log_martians"]="1"
    ["net.ipv4.conf.all.log_martians"]="1"

    ["net.ipv4.conf.default.forwarding"]="0"
    ["net.ipv4.conf.all.forwarding"]="0"

    ["net.ipv4.conf.default.rp_filter"]="1"
    ["net.ipv4.conf.all.rp_filter"]="1"

    ["net.ipv4.tcp_syncookies"]="1"
    ["net.ipv4.ip_forward"]="0"

    ["net.ipv4.tcp_rfc1337"]="1"

    # Miscellaneous:
    ["dev.tty.ldisc_autoload"]="0"

    # OOM:
    ["vm.panic_on_oom"]="1"
    ["kernel.panic"]="10"
)
