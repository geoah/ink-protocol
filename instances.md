# Instances

While each schema represents the structure of a specific set of data, instances
are the data themselves; they are "instances" of a schema.

Identities can create instances through the use of Services (applications,
websites, etc).  

## Flow

Let's take an example of an instant messenger application.  
Jane downloads the application, connects to her identity and authorizes the
application which requested access to the `messages.schema.ink` and the Jane's
relations with other Identities.

Jane can now create a message and select the people she wants to send the
message to. Let's say that Jane selected John (`john.haiku.ink`) and Alice
(`alice.haiku.ink`).

The client will send the message together with its recipients to Jane's Identity
Server. Jane's Identity Server `jane.haiku.ink` which will in turn
cryptographically sign it and send it off to the Identity Servers of John and
Alice.

Instances that have been shared with others will be copied to their Identity
Servers.  
The owner of an Instance (the Identity that created it) can make any
modifications to the Instance or share it with additional Identities.
An Identity cannot make modifications to an Instance it did not create.
It can share it to more Identities but cannot make any changes to it without
creating a copy of it with itself as the owner.

Identity Servers *must not* accept Instances if their signature does not pass
verification.

## Access

In addition to the ability to share Instances with specific Identities,
Instances can be marked as public. Public Instances will be pushed to all the
Identity's relationships and can be accessed without a token.

[TODO: Privacy flag]

## Synchronisation

Ink shares data between its users by creating copies of shared Instances on all
the relevant Identities' Identity Servers.

Instances can be modified only by their owner and then must be re-signed and
pushed again to the appropriate Identity Servers.

[JSON Patch](https://tools.ietf.org/html/rfc6902) is a possible way to update
Instances on the remote Identity Servers.

## Data rot

Due to the fact that Instances are being copied on all Identities, if a user is
has a lot of relations the amount of Instances it will accumulate will be
overwhelming; especially if the Instances contain binary data such as images or
videos.

[Big Data Space Fungus - Paper](http://www.cidrdb.org/cidr2015/Papers/21_Abstract58KM.pdf)
[Big Data Space Fungus - Presentation](https://www.monetdbsolutions.com/sites/default/files/CIDR2015Kersten.pdf)
