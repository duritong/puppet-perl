# modules/perl/manifests/init.pp - manage perl stuff
# Copyright (C) 2007 admin(at)immerda.ch
# GPLv3
# adapted by Puzzle ITC
# Marcel Härry haerry+puppet(at)puzzle.ch
# Simon Josi josi+puppet(at)puzzle.ch

import 'defines.pp'

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
