# Schemas

## About

Schemas describe the structure of data to be saved.

## Definition

Schemas use a subset of the [JSON-Schema](http://json-schema.org/) [draft 04](http://tools.ietf.org/html/draft-zyp-json-schema-04) to describe structures.

The basic deviation from the JSON-Schema is the fact that the schema id must be a [FQDN](http://en.wikipedia.org/wiki/Fully_qualified_domain_name) available on HTTPS and publicly accessible.

Additionally only specific pre-defined [format](http://tools.ietf.org/html/draft-fge-json-schema-validation-00#page-18) types will be allowed. This is to enforce uniform validations between different implementations of Hubs and Applications. The regular expressions of these formats will need to be described and provded as part of the Ink protocol.
