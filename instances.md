# Instances

While each schema represents the structure of a specific set of data, instances
are the data themselves; they are "instances" of a schema.

Actual data (payload) are wrapped in the instance object that consists of quite
a lot of metadata.

```javascript
{
  "id": "c4226e9c-940c-4392-9df6-a69c58536486",
  "schema": "some-schema.schemas.ink",
  "schema-version": "1.0.0",
  "parent": "26974d6e-9271-4e21-9868-19848b37731c",
  "revision": "c1275bc52ddc24a2d7ab787971bbb95962abefc1",
  "createdBy": {
    "service": "some-service.com",
    "client": "mobile-android",
    "version": "1.0.1"
  },
  "createdAt": 1421021016690,
  "updatedAt": 1421021016691,
  "deletedAt": 1421021016692,
  "owner": "99e21f92a31b6ad6282348ac61e420535d557b423c91534b79031da8f90a7748",
  "visibility": "public",
  "access": [{
    "id": "2bd806c97f0e00af1a1fc3328fa763a9269723c8db8fac4f93af71db186d6e90",
    "state": "ACC",
    "privileges": {
      "update": true,
      "delete": true,
      "archive": true,
      "relay": true
    }
  }],
  "payload": {},
  "signature": {}
}
```

The visibility of the instance defines who is able to view it. A `public`
instance can be viewed by anyone that has a relationship with its owner while a
`private` instance will only be accessible to people who have been given
explicitly access.
