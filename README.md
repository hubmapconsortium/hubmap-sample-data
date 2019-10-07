# hubmap-sample-metadata

This is a home for metadata processing tools for HuBMAP.
Samples of the inputs we will receive from each data release team will be hosted here,
along with corresponding sample outputs that can be ingested with the Data Portal API.

There will be many more, but we have begun with three workflows:
- [Vanderbilt autofluorescence](workflows/vanderbilt-af)
- [Lightsheet microscopy](workflows/lightsheet)
- [seqFISH](workflows/seqfish)

## Roadmap

Eventually, this will be renamed to `hubmap-metadata`, and it will become a tool that could be used
either in development by Django management scripts, or in production by some API.
- It will take as input Metadata CSVs and a workflow name,
- and produce as intermediate output templated HCA-validated JSON describing entities and RDF relating the entities,
- and as final output flattened JSON ready for Elasticsearch ingest.

![Raw CSV to HCA JSON to ES JSON](diagrams/data-flow.svg?sanitize=true)

In production, I think the templating steps will actually be separated in time,
with the intermediate output JSON being stored in Neo4J.
That said, the templating mechanism is similar in both phases, so this continuous flow may be easier to conceptualize.

## Symbology

HuBMAP uses the HCA Metadata Standard's [five entity types](https://github.com/HumanCellAtlas/metadata-schema/blob/dc60b25010d0b82796b0cb256a120317343040d5/docs/structure.md#metadata-entity-model) for its own metadata,
but the HCA Standard does not provide a sufficiently flexible way of describing provenance.
For that, we are using [W3C PROV](https://www.w3.org/TR/2013/NOTE-prov-primer-20130430/#intuitive-overview-of-prov).

That said, the domain-specific symbology of HCA is easier to understand at a glance,
so we will use it in the workflow examples.
Here is a demonstration of how the two symbologies correspond:

![Compare HCA to PROV](diagrams/hca-prov.svg?sanitize=true)

(All diagrams in this repo are editable with [draw.io](https://www.draw.io/), either on the web or with their desktop app.)

- We are not using the HCA's `Project` entity type.
- We are using only a fraction of the PROV vocabulary; In particular, for now, we are not using `Agent`.
- The two systems have different arrow direction conventions.
- In PROV, `used` relates both the Protocol and Tissue Section to the Process. Roles are distinguished by [`qualifiedUsage`](https://www.w3.org/TR/prov-o/#qualifiedUsage).
