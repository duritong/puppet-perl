# manifests/extensions/encode_compat.pp

class perl::extensions::encode_compat {
    perl::module{'Encode-compat': }
}
