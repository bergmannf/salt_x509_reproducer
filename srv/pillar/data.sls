x509_signing_policies:
  minion:
    - authorityKeyIdentifier: "keyid"
    - basicConstraints: "critical CA:false"
    - copypath: "/etc/pki/issued_certs/"
    - keyUsage: "critical nonRepudiation, digitalSignature, keyEncipherment"
    - minions: "*"
    - signing_cert: |
        -----BEGIN CERTIFICATE-----
        MIIGKjCCBBKgAwIBAgIJAL4GslMh2W3nMA0GCSqGSIb3DQEBCwUAMIGhMQswCQYD
        VQQGEwJERTEQMA4GA1UECAwHQmF2YXJpYTESMBAGA1UEBwwJTnVyZW1iZXJnMRsw
        GQYDVQQKDBJTVVNFIEF1dG9nZW5lcmF0ZWQxMzAxBgNVBAsMKkNhYVNQIDU2YzJk
        MTQ5LTM4Y2MtNDYxYy1iMjk5LTA2YWM3NDQ1MDBjMDEaMBgGA1UEAwwRQ2FhU1Ag
        SW50ZXJuYWwgQ0EwHhcNMTgwODI3MTIwODExWhcNMjgwODI0MTIwODExWjCBoTEL
        MAkGA1UEBhMCREUxEDAOBgNVBAgMB0JhdmFyaWExEjAQBgNVBAcMCU51cmVtYmVy
        ZzEbMBkGA1UECgwSU1VTRSBBdXRvZ2VuZXJhdGVkMTMwMQYDVQQLDCpDYWFTUCA1
        NmMyZDE0OS0zOGNjLTQ2MWMtYjI5OS0wNmFjNzQ0NTAwYzAxGjAYBgNVBAMMEUNh
        YVNQIEludGVybmFsIENBMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA
        xCNcpwuU/o6LLsr3BT9sihQzv7DjJS7Xmu7TSyefYLL3u+UCtVnSZRTgbEISL3SV
        CfTdSibQRgimCad0Frf+zCK3sFPzmZrnGz4kr4+022pHqS6OUkETKqbhBvybIY6x
        fGeh5z4h4HRtKM11BV6a4HPZDIrjjo7YtulJqPXfH/D96YPTNvn9CpLGudV+QND4
        oeAgTcG3utTIz/oE5OOwRb5NlCYIr9i8KFpr29MNjSmzdkFFQcU7qwU3j9gLGPB0
        hk9EoqsBoZ8AtOe2UsgcIjxH2R9qVjR69bHuU1pw7GMbvVXROTCEV3a0oS3BiVq/
        E2cuCZWYgF9sXlxJrX6ZiZGR60GnyM7xZm8axLQYYnE+HfjAZAbX2q5DAfsbThCH
        q5eKlYA0BSn/NSXyFoWYLabxhGdqU9UuQJNqLiVxFG9Ekkx3S+lCLU7bmRYafOG1
        okfC6TkVOVGpuDFFoGgTraNaG0Xsxd+FL4HV1GuNpZNAskSfBhAgDneCNQseqTck
        /pIUZPSOCgbm9dd/qJ5//Le81Ve6X52FP/C2xKSJn9F9QN20y7zfJuA62At/RDr0
        uy6RQyZ0MxkQzqz5VetZuIwZwhOVfYTWEwCac2wrvw04qm8skDYzVk/Ci/OQWVcH
        HNR9cgWKMDyjILUz4TG1pGknGWnbXhH8fymYNlS0w1MCAwEAAaNjMGEwHQYDVR0O
        BBYEFLdua+OHsvKJzJy9xjlImapWJJzXMB8GA1UdIwQYMBaAFLdua+OHsvKJzJy9
        xjlImapWJJzXMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgLkMA0GCSqG
        SIb3DQEBCwUAA4ICAQB4DVoQ2xhVx2RMI0ltIU2rExbyYj6MfJN4+83n2vUxtvju
        TKUFXIqpZEfasEV0FsaKmsTNGq0Arp1pN5Cipsy7W/Js1jb0gWNsjHIi4TzT4912
        NrJS/XyOPJK2MQwBvdVnKsizTzZOJ+r0qAPvt/pNGaB9WSp8+gpj3O+nPqi2M7/M
        LEoW0kI9zXadBVIOr/iQzWhjUPBqvx4P6ERwy/FX33XjNcdJHZXQWK/9EEjX6jKK
        NqPN/tqYp7lX6uY/TzUOX/qlgeROFyUM805lZa0GShHJHq8DrGhnahHilBYeoaMz
        5N8zKz+uyPqUxK8h8ZYy9bgIF2FO4lsjhsi2qhBRl/VWjaMI/R7yA8768LEQr7Am
        1X/guEIg0aN/Lpjn3kyiKUI0GTzA3Di3uqt+xM5jC/Y4dbwGzUnsUyh9d9w/ZL+K
        0YMYlB91TMPcUSzoZ+lfkZ9Qul2ZpTGymI0+RD7IhD5LwEngrIB7Ucnqa31F78sV
        jB5+Zu0AI9B3rVerfdZksW42ryA0U2JZiqvsWUjcTB93aC5ewnke2/Q8hC8UVINR
        LXBc1lWE4hMtE7wMGewwZAhKgw1gpthDGCZyEtB2PJs/zkYmkR2gfZbc5kIvxEfR
        Hcf010vgN8mvRm/SKDeJtpEgb9/7vr5XdKLQ7yz94+P2XjZPxOE2xqYVYFbnow==
        -----END CERTIFICATE-----
    - subjectKeyIdentifier: "hash"
