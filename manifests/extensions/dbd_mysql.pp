# manifests/extensions/dbd_mysql.pp

class perl::extensions::dbd_mysql {
  case $operatingsystem {
    'debian','ubuntu': {
      perl::module { 'dbd-mysql': }
    }
    default: {
      perl::module{'DBD-MySQL': }
    }
  }
}

