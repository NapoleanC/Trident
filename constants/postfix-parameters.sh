# Written by: Christopher Gholmieh
# Constants:
declare -A postfix_parameters=(
    ["default_process_limit"]="100"
    ["smtpd_client_connection_count_limit"]="10"
    ["smtpd_client_connection_rate_limit"]="30"
    ["queue_minfree"]="20971520"
    ["header_size_limit"]="51200"
    ["message_size_limit"]="10485760"
    ["smtpd_recipient_limit"]="100"
    ["inet_interfaces"]="loopback-only"
)

declare -A postfix_postgrey_parameters=(
    ["strict_rfc821_envelopes"]="yes"
    ["smtpd_helo_required"]="yes"
    ["smtpd_helo_restrictions"]="permit_mynetworks,permit_sasl_authenticated,reject_non_fqdn_helo_hostname,reject_invalid_helo_hostname"
    ["smtpd_client_restrictions"]="permit_mynetworks,permit_sasl_authenticated,reject_unknown_client_hostname,check_client_access mysql:/etc/postfix/mysql-virtual_client.cf"
)