class perl::pcre::devel {
  include pcre
  package{"pcre-devel.${architecture}": ensure => present }
}