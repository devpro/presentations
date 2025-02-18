# Marp presentations

Presentations powered by [Marp](https://marp.app/).

## Presentations

* [GitOps 101](./docs/gitops-101.md)
* [Observability 101](./docs/observability-101.md)

## Design

### Themes

* [dracula](https://github.com/dracula/marp)
* [matsubara](https://github.com/matsubara0507/marp-themes)

## Local development

* Make sure [Node.js](https://nodejs.org/en/download/) is installed

```bash
npm -v
```

* Install [`marp-cli`](https://github.com/marp-team/marp-cli) NPM package

```bash
npm install -g @marp-team/marp-cli
```

* Go to the sub-folder

```bash
cd marp
```

* Build HTML output

```bash
marp src/*.md
```

* Open [index.html](./src/index.html)

* Start watching the changes on the file you're going to edit
  
```bash
marp src/index.md --watch
```
