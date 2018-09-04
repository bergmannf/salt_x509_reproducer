x509_signing_policies:
  minion:
    - authorityKeyIdentifier: "keyid"
    - basicConstraints: "critical CA:false"
    - copypath: "/etc/pki/issued_certs/"
    - keyUsage: "critical nonRepudiation, digitalSignature, keyEncipherment"
    - minions: "*"
    - signing_cert: /etc/pki/cert.crt
    - signing_private_key: /etc/pki/private/ca.key
    - subjectKeyIdentifier: "hash"
