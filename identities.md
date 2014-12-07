# Identities

Identities are unique and are represented by fully qualified domain names (FQDNs) eg. `alice.haiku.ink` or `robert.me` and served over HTTPS.
eg. The identity `jane.haiku.ink` must be accessible over `https://jane.haiku.ink`.

## Identity details

Each Identity holds its owner's personal details; name, nickname, phone numbers, email addresses etc.

The user is able to select which of this personal details is publicly accessible or visible only to specific relationships.
eg. Users can select to only show their nickname to everyone, their work related information to co-workers and everything else to friends and family.

Personal details such as name, nickname, company etc can be set in multiple languages. This way others can select their preffered language and see your details in the language of their choosing. Selecting a specific language is done via the [Accept-Language HTTP Header](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.4)

```javascript
{
   "name": "Jane Doe",
   "nickname": "Jay",
   "displayPicture": "/jane-haiky-me.png",
   "born": "1970-01-01T00:00:00.000Z",
   "familyName": ["Doe"],
   "givenName": ["Jane"],
   "gender": "Female",
   "homepage": [],
   "honorificPrefix": "Dr",
   "honorificSuffix": "PhD",
   "nationality": ["PN"],
   "telephone": [],
   "address": []
}
```

[TODO]

# Identities / Relationships

[TODO]

## Identity creation/registration

To create an identity you need to first select a Hub that will store its data. How each Hub will handle new identity registration is up to them.

Haiku being a very proof of concept Hub is very flexible with new Identities. Any A record or CNAME you point to an IP address that Haiku listens to will be able to become an Identity.
Let's assume that we want to create a new identity on the `haiku.ink` Hub with the FQDN `jane.me` that we own. We create a CNAME for `jane.me` that points to `haiku.ink` and make a `POST` request with `Content-Type: application/json` and our details to `https://jane.ink`. This should create our identity for us and we should be able to start using it.
A public hub could also allow registrations on new identities using any of its subdomains (*.some-hub.tld).
