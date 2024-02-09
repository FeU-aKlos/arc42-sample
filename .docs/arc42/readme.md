# mmmake Software Architecture Channel Tooling Repository

Welcome! As we like to write code we want also want to write our documentation with code. 

Within this repository we will give you everything required to create an architecture description 
based on the widly known architecture template [ARC42](https://www.arc42.de/overview/).

We will use [asciidoc](https://asciidoc.org/) as a markup language and [d2](https://d2lang.com/tour/intro/) to draw diagrams. 
We will use [asciidoctor docker image](https://github.com/asciidoctor/docker-asciidoctor) to generate the required artifacts out of asciidoc.

## What we want to achieve with this / Why this exists
We want our software to be documented well. To make this as easy as possbile for everyone we want 
to give you all the tools preconfigured and ready to use so you can just start writing the code.

## Capabilities
- Create html from arc42 asciidoc (the images are included in html, not linked)
- Create pdf from arc42 asciidoc
- Create d2 diagrams as svg to be used by arc42 generation
- Export arc42 to confluence

## Get started MacOs/Linux
- download required dependencies, only needed on the first time: `./init.sh`
- create the documentation: `./create-html.sh` or `./create-pdf.sh` 

## Export to confluence
Extensive guide here: https://doctoolchain.org/docToolchain/v2.0.x/020_tutorial/070_publishToConfluence.html#_publish_your_docs_to_confluence

**Needed env vars**
`ARC42_EXPORT_CONFLUENCE_API` e.g. `https://mmmake.atlassian.net/wiki/rest/api/`
`ARC42_EXPORT_CONFLUENCE_SPACE_KEY` e.g. `ANT`

either `ARC42_EXPORT_CONFLUENCE_USER_EMAIL` and `ARC42_EXPORT_CONFLUENCE_USER_PAT`

or

`ARC42_EXPORT_CONFLUENCE_USER_BEARER` see https://confluence.atlassian.com/enterprise/using-personal-access-tokens-1026032365.html#UsingPersonalAccessTokens-CreatingPATsintheapplication


Use the `export-to-confluence.yml` as pipeline in azure devops

It is important that this documentation is located in the `/.docs` folder inside the root of your repository. It is also recommended to put this alongside your code to make sure the documentation and code can be merged simultaneously.

## Repository structure

- /azure
  - note: contains pipeline examples to automatically generate the documentation and publish it to multiple targets.
- /src
  - /arc42
    - note: contains the arc42 ascii doc template.
  - /diagrams
    - note: contains the d2 markup files.
  - /images
    - note: contains the images that are used while generating the documentation. D2 diagrams are automatically converted and copied into the images folder while creating documentation and are deleted afterwards.
- /scripts
  - note: contains the scripts to create diagrams, generate the documentation and so on.

## Maintaining and further developing 

[The software architecture channel](https://indecagmbh.sharepoint.com/sites/Intranet/SitePages/Channels---Software-Architecture.aspx?web=1) is responsible for this repository. 

Challenges and better ideas are always welcome. 

Feel free to create a Pull Request or get in touch with us.

