class perl::pcre::devel {
  include perl::pcre
  package{"pcre-devel.${architecture}": ensure => present }
}