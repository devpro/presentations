<!--
theme: gaia
class:
 - invert
headingDivider: 2 
paginate: true
-->

<!--
_class:
 - lead
 - invert
-->

# Git best practices

## Naming conventions

**kebab-case** for all names: repositories, branches, tags

:red_circle: BadName

:white_check_mark: good-name

:red_circle: bad_name_returns

:bulb: Words in lower case, separated by dashes

## GitFlow approach

* Permanent / protected branches
  * `main`
  * (optional) `develop`

* Short-life branches
  * `feature/xxx-yyy`
  * (optional) `hotfix/xxx-yyy`

* Long-life branches
  * (optional) `release/xxx-yyy`

## Basic command lines (1/2)

```bash
# retrieves source code (map a local folder with a remote repository)
git clone <repository_url>

# creates a feature branch
git checkout -b feature/xxx-yyy

# adds all changes
git add .

# commits a set of changes
git commit -m "Here I summarize the code change"
```

## Basic command lines (2/2)

```bash
# pushes changes to the remotes
git push

# loads latest changes from remotes
git pull

# switches to main branch
git checkout main

# displays status
git status
```

## CLI configuration on Windows

```bash
# displays git configuration on Windows
more %userprofile%\.gitconfig

# edits the configuration by opening an editor
git config --global --edit

# enables long paths
git config --global core.longpaths true

# disables end of line mess up (not git responsibility)
git config --global core.autocrlf false
```

## GUIs

* [GitKraken](https://www.gitkraken.com/)

* [Visual Studio GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)

* [SourceTree](https://www.sourcetreeapp.com/)

## Bye for now

You can go back to the presentation [home page](./index.html)
