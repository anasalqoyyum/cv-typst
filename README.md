# CV using Typst

This repository contains a version-controlled Curriculum Vitae (CV) created using [Typst](https://typst.app/), a modern typesetting system designed for academic and professional documents.

The template used in this repository is based on: [imprecv](https://github.com/jskherman/imprecv). Special thanks to them for providing a clean template.

## Usage

This `cv` is intended to be used by importing from a "main" file (see [`main.typ`](main.typ) as an example).
In this main file, call the functions which apply document styles, show CV components, and load CV data from a YAML file (see [`content.yml`](content.yml) as an example).
Inside the main file you can modify several style variables and even override existing function implementations to your own needs and preferences.

```
make compile
```
