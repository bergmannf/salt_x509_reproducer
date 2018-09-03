'/etc/pki/':
  file.directory:
    - user: root
    - group: root
    - dir_mode: 755
    - file_mode: 644

'/etc/pki/minion.key':
  x509.private_key_managed:
    - bits: 4096
    - user: root
    - group: root
    - mode: 444

/var/log/ca1.crt:
  x509.certificate_managed:
    - ca_server: '$CA_SERVER'
    - signing_policy: 'minion'
    - public_key: '/etc/pki/minion.key'
    - CN: 'system:node:master-0'
    - C: 'DE'
    - Email: 'None'
    - GN: 'None'
    - L: 'Nuremberg'
    - O: 'system:nodes'
    - OU: 'Containers Team'
    - SN: 'None'
    - ST: 'Bavaria'
    - basicConstraints: 'critical CA:false'
    - keyUsage: 'nonRepudiation, digitalSignature, keyEncipherment'
    - subjectAltName: 'DNS: master-0, DNS: master-0.infra.caasp.local, DNS: 823c047117d143ac92e0a5a487db577c, DNS: 823c047117d143ac92e0a5a487db577c.infra.caasp.local, DNS: kubernetes, DNS: kubernetes.default, DNS: kubernetes.default.svc, DNS: api, DNS: api.infra.caasp.local, DNS: master-0.devenv.caasp.suse.net, IP: 172.24.0.1, DNS: kubernetes.default.svc.cluster.local'
    - days_valid: 365
    - days_remaining: 90
    - backup: True
    - user: 'root'
    - group: 'root'
    - mode: 644
    - require:
        - x509: '/etc/pki/minion.key'
