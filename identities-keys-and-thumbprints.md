# Identities / Keys & Thumbprints

## Keys

When creating a new identity you will be able to provide a [key pair](http://en.wikipedia.org/wiki/Public-key_cryptography) or allow the Hub to create one for you.

Each identity has two keys: A private and a public one.  
The keys are stored using the structure proposed by [JWK](https://datatracker.ietf.org/doc/draft-ietf-jose-json-web-key/) [draft 37](http://tools.ietf.org/html/draft-ietf-jose-json-web-key-37) inside the identity.  
The private key is stored as _jwk and is available only to the identity's owner while the public key is stored as jwk and is available to anyone.

Keys are used to verify the identity's and its instances' authenticity and validity. All instances are signed by their owner so their origin and integrity can be verified.

*The private key is extremely sensitive and keeping it secure is of the utmost importance; that being said, for the time being it is stored in plain sight.*

```javascript
{
    "_jwk": {
        "d": "3R5wvq-iYhoc86Qec2QcF16Eq5OxhUWLd7bUQJtJN9GVJBb9gfS23tmyTFxj5O48ELpAZg3iuYeSD8V0HmNkKrL7u0a4cMhZGmRuDlO6VC77u0jVltfIHvRnsa1jDFvrnSOMZYZLuT5XsEvK-yd7bCFWGunu8tIGj1pMgp9W2B6Mq2aav7c0ul54fd75XPfGgSC3mKD7EnJbmOYRvSmspm0vrBtlQUJLnoURqliQljN5UP8CdXyNjToJwjiNXl9wupkY176w7Nfmtx-VqyZvUEx4lSCTgnPOwCJvhfsM1k7RoHGxoGExGcZ7XGm8EL_rhCkJH5G8fSPK7a56qb7F6Q",
        "dp": "ijauonebLOJ_025TByUxxJkJdoxcliTUvCX2wkDXLRubb9gf4Oi9veIgTp8ZcO-Wv91lrWEtWDma1LvYJVmkN9O-xGUit7YMWh8lq1FEhxBI5A-dvZYA-f6oaW8IOdTAy4TvZvh0mk_OwD2KpyIgLWJqTdLUHG0MtMlYSKlmdvU",
        "dq": "nkJxxqCU-zQBqbmuMjYXak5wUvRbhhN8F9EDd-SB1BxBzivI0e0ca58HAEjykAXYejrTWIF6N7xS9taT4_sDVc3vBB12s1mv8zFivCAvNsc8RJPj1mYXWxqAKv8q3s4JJn53dBSptHOGokI1rnPSfGAhZ0DfPoR2SxACbWogttk",
        "e": "AQAB",
        "kid": "BIIF:2RJ3:EB7W:ISA2:ZR6P:X7P7:E5M3:FTZO:QGWD:MD5U:UEGK:CZPV",
        "kty": "RSA",
        "n": "4jllO5Znas8nCR-_YnT-82v9g779xhzbV54nDOP18QhjY3yCchDFqLzC85kWFtoP9yMmDgMvKbUXGrvcftvsRCipLwf7z0-v9JvDvuHUeJmWpgcd9quBIkh0-W0gxO_5cz6EeeqRg6gt56sAjBtci-yaPsZ3s9lSETAXhLQAs4OmGlz9rsnrBa2NtPCMvjaaC-Pb7xsnMK7evTA-9toOYFL_jofKi-1MXn1Pk42zX7qrZJzoMj-9YvnCop0OiTV9K936Azc7RvoLJ9X9MuMOavnrCSv9vbpmjQ5kF4SiVOy3TlicY9eHBUZjZQ9s7IDpJz1nX4KtpiNxsk82aDsxwQ",
        "p": "_xYF63v3q27tK0GqP-Ac6FSmu3QMTXdcyjlgrWwpzH0KenBCnuzFPBwS-ufvnvE4AwdoZTWc9IedBQXCYlFrApSk8scOF8vG2K1dwJRzlLQdgLBDsGEcyy64AlxRrCYy9PQY0_NWZqmZBgsfglzvvzF3sIE0FqyY6B-VjGeiOY8",
        "q": "4wjmHeoksSCvilc898DBIOpW7r6QAbKuUP21rWxuJmiH-2nzCAkL3I8ccMqOeWava0YIZt3JrFbwnmRYGs1Q8dGJ4p3n7lbahv1dqF_R3UsKIWYllIJaKMK2tjqgE1OhKm3duDS1Espg6M4r5Fk3Y2EzZM_04PnoX0Dr-Bc2F68",
        "qi": "5rrB7UOHlUCKufOWiMvH_E21cv9kwM9CovMA_yEdY-wRXsLi4C7PIpMDmIHV7VBOEtCQpel410VbZ4dAXQSHetREoDB-yEiJTvaxh2ykgbo61729igrXg0qlmBaOlyKBAWttSUsNiDf_UldUOcekk9gRZi6B68EjzbJm4-iz0qA"
    },
    "jwk": {
        "e": "AQAB",
        "kid": "BIIF:2RJ3:EB7W:ISA2:ZR6P:X7P7:E5M3:FTZO:QGWD:MD5U:UEGK:CZPV",
        "kty": "RSA",
        "n": "4jllO5Znas8nCR-_YnT-82v9g779xhzbV54nDOP18QhjY3yCchDFqLzC85kWFtoP9yMmDgMvKbUXGrvcftvsRCipLwf7z0-v9JvDvuHUeJmWpgcd9quBIkh0-W0gxO_5cz6EeeqRg6gt56sAjBtci-yaPsZ3s9lSETAXhLQAs4OmGlz9rsnrBa2NtPCMvjaaC-Pb7xsnMK7evTA-9toOYFL_jofKi-1MXn1Pk42zX7qrZJzoMj-9YvnCop0OiTV9K936Azc7RvoLJ9X9MuMOavnrCSv9vbpmjQ5kF4SiVOy3TlicY9eHBUZjZQ9s7IDpJz1nX4KtpiNxsk82aDsxwQ"
    }
}
```

## Thumbprints

Identities cannot use their FQDN as an identitier as users should be able to change their FQDNs without destroying their relationships with others or the ownership of the instances they have created or have access to. Secret/Public keys solve part of this problem as using their secret key a user can validate their identity.

In order to create a unique identifier by which we can safely refer an identity even after changing its FQDN we will use the [JWK Thumbprint](https://datatracker.ietf.org/doc/draft-jones-jose-jwk-thumbprint/) [draft 01](http://tools.ietf.org/html/draft-jones-jose-jwk-thumbprint-01) proposal on the identity's Public key.

[RFC] The JWK Thumbprint draft encodes the SHA256 signature as base64url, while this is kept intact when storing the thumbprint in the JSON structure of the public key, for the Identity's id a hex encoded version or the SHA256 is used.  
*[Note:geoah] I am not quite sure why do this but for some reason HEX and fixed length makes more sense as an identifier.*

This will effectively create a hash of the identity's Public key that we can use as an identifier. Any reference to this identity must use this thumbprint.

```javascript
{
    "id": "1fd13882380f27b3176f294ce5834e01e1185d4f8e559e0d86928998e9d8cd18"
}
```

*[Note:geoah] A crude example of keys and thumbprint generation and encoding in golang can be found [here](https://gist.github.com/geoah/525b9cc76121ba3e29f8).*