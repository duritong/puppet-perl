class perl::extensions::archive_zip {
  case $operatingsystem {
    'debian','ubuntu': {
        perl::module { 'archive-zip': }
    }
    default: {
      perl::module{'Archive-Zip': }
    }
  }
}
