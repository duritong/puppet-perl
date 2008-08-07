# modules/perl/manifests/init.pp - manage perl stuff
# Copyright (C) 2007 admin@immerda.ch
# GPLv3

# modules_dir { "perl": }

class perl {
    case $operatingsystem {
        gentoo: { include perl::gentoo }
        default: { include perl::base }
    }
}

class perl::base {
    package{'perl':
        ensure => installed,
    }

}

class perl::gentoo inherits perl::base {
    Package[perl]{
        category => 'some-category',
    }

    #conf.d file if needed
    # needs module gentoo
    #gentoo::etcconfd { perl: require => "Package[perl]", notify => "Service[perl]"}
}

define perl::module () {
    package { "${name}": ensure => installed }
    case $operatingsystem {
        gentoo: { perl::module::gentoo {"${name}": } }
        # default: { include perl::base }
    }
}

define perl::module::gentoo {
    Package["${name}"]{
        category => 'some-category',
    }
}
