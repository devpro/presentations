# Contribution guide

## Local setup

**NPM** must be installed (ref. [Download Node.js](https://nodejs.org/en/download/package-manager)):

```bash
node -v
npm -v
```

**Task** ([taskfile.dev](https://taskfile.dev/installation/)) is used to simplify the commands.

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

Install pur and update Python requirements file:

```bash
pip install pur
pur -r requirements.txt
pip install -r requirements.txt
```

Packages and binaries are required:

```bash
task setup
```

Disable virtual environment for Python:

```bash
deactivate
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

## Run the pipeline locally

[IstarCI](https://github.com/devpro/istarci) runs the GitHub Actions pipeline in Docker before the push.
`istarci add` and `istarci install-hook` set it up for this repository.
