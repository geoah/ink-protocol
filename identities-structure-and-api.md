# Identities / Structure & API

## Structure

```javascript
{
    "_id": "e45a4156277d2b845a74b99c175abf1c322f472a717c7345dfc0a5dd2b9bd70c",
    "_pk": {},
    "_signature": {},
    "_rev": 17,
    "fqdn": "jane.haiku.ink",
    "name": "Jane Doe",
    "nickname": "Jay",
    "displayPicture": "/display-picture.png",
    "born": "1970-01-01T00:00:00.000Z",
    "familyName": ["Doe"],
    "givenName": ["Jane"],
    "gender": "Female",
    "homepage": [],
    "honorificPrefix": "Dr",
    "honorificSuffix": "PhD",
    "nationality": ["PN"],
    "telephone": [],
    "address": [],
}
```

[TODO]

## API

*Note: Identity is the only singular endpoint in Ink.*

### Endpoints

#### GET /identity

Used to retrieve the identity's details.
Can be called with or without an authentication token. If a token is present the identity details that will be retrieved might contain additional information that are only accessible to the requesting identity.

#### PUT /identity

Used by services to modify the identity's details.

[TODO]
