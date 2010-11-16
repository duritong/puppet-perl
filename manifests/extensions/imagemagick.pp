class perl::extensions::imagemagick {
  require perl
  package{'ImageMagick-perl':
    ensure => installed,
  }
}
