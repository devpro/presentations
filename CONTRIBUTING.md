# Contribution guide

## Local setup

**NPM** must be installed (ref. [Download Node.js](https://nodejs.org/en/download/package-manager)):

```bash
node -v
npm -v
```

**Task** ([taskfile.dev](https://taskfile.dev/installation/)) is used to simplify the commands and unify with the CI/CD pipelines:

```bash
npm install -g @go-task/cli
```

<!-- TODO: use a container image of MkDocs -->

**Python3** must be installed with pip and venv:

```bash
python --version
sudo apt install python3-pip
sudo apt install python3-venv
```

Create a virtual environment for running Python:

```bash
python3 -m venv .venv
source .venv/bin/activate
```

Packages and binaries are required:

```bash
task setup
```

<!-- Disable virtual environment for Python:

```bash
deactivate
``` -->

## Code checks

Lint the code with:

```bash
task lint
```

## Frameworks / libraries

Presentations are build with:

* [Marp](marp/README.md)
* [Slidev](slidev/README.md)

## Documentation

Presentation powered by [MkDocs](https://www.mkdocs.org/).

Start a local web server:

```bash
task docs:serve
```

Open the documentation on [127.0.0.1:8000](http://127.0.0.1:8000/).

MkDocs configuration is read from [mkdocs.yml](mkdocs.yml).
