# manifests/defines.pp

define perl::module (
    $ensure = 'present'
) {
    include perl

    package {"perl-${name}": 
        ensure => $ensure, 
        require => Package['perl'],
    }
}

