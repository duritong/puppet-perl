# manifests/extensions/net_imap_simple_ssl.pp

class perl::extensions::net_imap_simple_ssl {
    perl::module{'Net-IMAP-Simple-SSL': }
    # installs perl-IO-Socket-SSL
    # installs perl-Net-SSLeay   
}

