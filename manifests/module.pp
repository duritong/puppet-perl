define perl::module (
  $ensure = 'present'
) {
  if $ensure == 'present' { require perl }
  package {"perl-${name}": ensure => $ensure }
}

