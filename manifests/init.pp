# modules/perl/manifests/init.pp - manage perl stuff
# Copyright (C) 2007 admin@immerda.ch
# GPLv3

class perl {
    case $operatingsystem {
        default: { include perl::base }
    }
}

class perl::base {
    package{'perl':
        ensure => installed,
    }

}

define perl::module () {
    package { "${name}": ensure => installed }
}
