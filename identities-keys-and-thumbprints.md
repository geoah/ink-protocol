# Identities / Keys & Thumbprints

## Keys

When creating a new identity you will be able to provide a [key pair](http://en.wikipedia.org/wiki/Public-key_cryptography) or allow the Hub to create one for you.

Each identity has two keys: A secret (private) and a public one.
Secret keys are sensitive and are used to sign the instances the identity's owner creates. Keeping these keys secure is very important and needs to be properly researched.
Public keys are available to anyone and are used to verify the authenticity of instances.

The keys are stored in the identities using the structure proposed by [JWK](https://datatracker.ietf.org/doc/draft-ietf-jose-json-web-key/) [draft 29](http://tools.ietf.org/html/draft-ietf-jose-json-web-key-29) as single object under `_kp` in the identity's details.

```javascript
{
    "_kp": {
        "kty": "RSA",
        "n": "0vx7agoebGcQSuuPiLJXZptN9nndrQmbXEps2aiAFbWhM78LhWx4...",
        "e": "AQAB",
        "d": "X4cTteJY_gn4FYPsXB8rdXix5vwsg1FLN5E3EaG6RJoVH-HLLKD9...",
        "p": "83i-7IvMGXoMXCskv73TKr8637FiO7Z27zv8oj6pbWUQyLPQBQxt...",
        "q": "3dfOR9cuYq-0S-mkFLzgItgMEfFzB2q3hWehMuG0oCuqnb3vobLy...",
        "dp": "G4sPXkc6Ya9y8oJW9_ILj4xuppu0lzi_H7VTkS8xj5SdX3coE0o...",
        "dq": "s9lAH9fggBsoFR8Oac2R_E2gw282rT2kGOAhvIllETE1efrA6hu...",
        "qi": "GyM_p6JrXySiz1toFgKbWV-JdI3jQ4ypu9rbMWx3rQJBfmt0FoY...",
        "alg": "RS256",
        "kid": "2011-04-29"
    }
}
```

## Thumbprints

Identities cannot use their FQDN as an identitier as users should be able to change their FQDNs without destroying their relationships with others or the ownership of the instances they have created or have access to. Secret/Public keys solve part of this problem as using their secret key a user can validate their identity.

In order to create a unique identifier by which we can safely refer an identity even after changing its FQDN we will use the [JWK Thumbprint](https://datatracker.ietf.org/doc/draft-jones-jose-jwk-thumbprint/) [draft 00](http://tools.ietf.org/html/draft-jones-jose-jwk-thumbprint-00) proposal on the identity's Public key.

This will effectively create a hash of the identity's Public key that we can use as an identifier. Any reference to this identity must use this thumbprint.

```javascript
{
    "_id": "e45a4156277d2b845a74b99c175abf1c322f472a717c7345dfc0a5dd2b9bd70c"
}
```
