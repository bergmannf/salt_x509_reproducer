# Reproducing x509 errors

To reproduce the x509 errors experience by salt two minions are required:

- Setup 2 servers and dedicate one to be the `salt-master`.

- Push the files in this repository to the corresponding directories on the
  `salt-master`.
  
- Accept the two minions to the master.

- One of the minions has to be the `ca_server`: this minion's hostname should be
  put as `ca_server` into the `srv/state/init.sls` file: replace `$CA_SERVER`.

- Attempt to run `salt '*' state.apply state`.

The following error should occur:

```bash
     Comment: An exception occurred in this state: Traceback (most recent call last):
                File "/usr/lib/python3.6/site-packages/salt/state.py", line 1878, in call
                  **cdata['kwargs'])
                File "/usr/lib/python3.6/site-packages/salt/loader.py", line 1823, in wrapper
                  return f(*args, **kwargs)
                File "/usr/lib/python3.6/site-packages/salt/states/x509.py", line 570, in certificate_managed
                  'New': __salt__['x509.read_certificate'](certificate=certificate)}
                File "/usr/lib/python3.6/site-packages/salt/modules/x509.py", line 544, in read_certificate
                  cert = _get_certificate_obj(certificate)
                File "/usr/lib/python3.6/site-packages/salt/modules/x509.py", line 357, in _get_certificate_obj
                  text = get_pem_entry(text, pem_type='CERTIFICATE')
                File "/usr/lib/python3.6/site-packages/salt/modules/x509.py", line 480, in get_pem_entry
                  raise salt.exceptions.SaltInvocationError(errmsg)
              salt.exceptions.SaltInvocationError: PEM does not contain a single entry of type CERTIFICATE:
              in method 'x509_gmtime_adj', argument 2 of type 'long'
```
