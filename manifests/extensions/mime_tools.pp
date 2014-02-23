class perl::extensions::mime_tools {
  case $operatingsystem {
    'debian','ubuntu': {
      perl::module { 'mime-tools': }
    }
    default: {
      perl::module{'MIME-tools': }
    }
  }
}
