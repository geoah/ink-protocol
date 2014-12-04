# Ink Protocol

Ink is a decentralised protocol that allows you to store, access and share your data with the people you want; using the applications, services and websites you choose. It's up to you where your data are stored, what is being shared with each person and which of your data the applications you authorise have access to.

Ink's goal is to allow applications to use your information and data without taking them away from you. At any point you can switch to different applications and have access to the same data. For example instant messaging applications that use Ink can communicate with each other and focus on the features they provide. If you receive a picture in a messenger you can open a photo application that can connect to Ink and see that picture.

You are not restricted to keep using a single application just from fear of not losing your contacts or data, neither you have to force your friends to use the same applications as you.

## Identities, hubs and relationships

To use Ink you must first create an **identity**.
Each Identity is unique and in the form of a hostname (FQDN to be exact) For example `alice.haiku.ink` or `robert.me` and is how users identify and connect to one another.

You can choose where you host your identity and your data, you can set it up on your own server or use a public one. Servers that hold identities are called **hubs**. You can at any point move to a different one without losing your data or connections.
Public Hubs where people can simply create their Identities without much hassle will be most likely available at some point. More tech savvy users can setup private hubs for themselves or for their family and friends.
Identities can share data between them regardless of the hub they reside in.

*A prototype Hub implementation is [Haiku](https://github.com/ink-protocol/haiku). Feel free to set it up and check it out or even contribute to it.*

You can connect to other users using their identities and group them so it is easier to share something with them. Once you connect with an identity you will have access to the data they share publicly. You can think of this like Twitter's follow feature. They can then connect back to you to share anything specifically with you.

## Schemas and instances

In order to allow applications to access the same kind of information and data, their structures need to be described. These descriptions are called Schemas and thet can represent almost anything. *Messages, Locations, Photographs, Blog posts, Text Documents, etc.*
Complex schemas can even include others. *eg. A Photograph can have a Location embedded in it.*

*Schemas are uniquely identified by a hostname from where they can be retrieved. eg. `message.schema.protocol.ink`.*

Schemas simply describe a structure. The actual data that are described by schemas are called instances. When you send a message to a friend this will be an instance of the `message.schema.protocol.ink` schema.

You can share instances to other people you are connected to and even provide them with special permissions to edit or delete them.
Instances can optionally retain their history, have received/read receipts and other metadata useful for applications and services. Additionally they are signed their authors when they are created using public key cryptography to allow for authenticity verification and prevent tampering.

## Services and Applications

Since Schemas are publicly available anyone can create applications to access or manage instances created from them.
Trying to login to an application that uses the Ink Protocol it will ask you for your identity and then request access to specific schemas the same way Facebook enabled applications request permissions to parts of your profile.
This application will now have access to the instances that use these schemas. At any time you can see exactly what the application has accessed and revoke its permissions.

eg. A messaging application will request access to the `message.schema.protocol.ink` schema in order to have access to read and write messages.

**Note: The way that the schemas will be presented to the user is still under heavy consideration as to not create a weird experience for the end user.**

## Now what?

There are a lot of things we have in mind for Ink and even more we haven't even thought of.
If you'd like to contribute to any part, object to something or just say hi, just hop by the [Ink Protocol repository](https://github.com/ink-protocol/protocol) and create an issue.

