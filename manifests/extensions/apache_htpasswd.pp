# manifests/extensions/apache_htpasswd.pp

class perl::extensions::apache_htpasswd {
    perl::module{'Apache-Htpasswd': }
}
