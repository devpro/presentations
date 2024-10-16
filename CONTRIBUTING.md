# Contribution guide

## Local setup

**NPM** must be installed (ref. [Download Node.js](https://nodejs.org/en/download/package-manager)):

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash
nvm install 20
node -v
npm -v
```

**Python** must be installed.

**Task** ([taskfile.dev](https://taskfile.dev/installation/)) is used to simplify the commands and unify with the CI/CD pipelines:

```bash
sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b ~/.local/bin
```

NPM packages are required:

```bash
task setup
```

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
