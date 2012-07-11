define perl::module ( $ensure = 'present' )
{
  if $ensure == 'present' { require perl }

  case $operatingsystem {
    'debian','ubuntu': {
        package {"lib${name}-perl": ensure => $ensure }
    }
    default: {
      package {"perl-${name}": ensure => $ensure }
    }
  }
}

