# manifests/extensions/net_dns.pp

class perl::extensions::net_dns {
  case $operatingsystem {
    'debian','ubuntu': {
      perl::module { 'net-dns': }
    }
    default: {
      perl::module{'Net-DNS': }
    }
  }
}
