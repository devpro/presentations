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

# Ansible best practices

## What?

> Ansible is an IT automation tool. It can configure systems, deploy software, and orchestrate more advanced IT tasks such as continuous deployments or zero downtime rolling updates.

→ [docs.ansible.com](https://docs.ansible.com/ansible/latest/index.html)

## Source code type

Two types of Ansible git repositories:

* Components
  * Plugins
  * Playbooks
  * Roles

* Static inventories
  * Host
  * Variables

## Source code sharing

Ansible component repositories can be used from another repository as Ansible collections (preferred) or git submodules.

* Public collections: [galaxy.ansible.com](https://galaxy.ansible.com/)

* Private collections: any artifact repository manager such as [Artifactory](https://jfrog.com/artifactory/)

## Source code granularity

:red_circle: 1 repository for all roles

:white_check_mark: 1 repository for all the roles of the same perimeter

:red_circle: 1 repository for 1 role

## Git repository structure

```txt
├─ playbooks
├─ plugins
└─ roles
.ansible-lint
.editorconfig
.galaxy.yml
LICENCE
README.md
```

## Ansible role folder

```txt
└─ roles
   └─ <myrolename>
      ├─ handlers
      │  └─ main.yml
      └─ tasks
         ├─ main.yml
         └─ <mysubtask>.yml
```

## Work on branch

:red_circle: Commit on main only

:white_check_mark: Create a feature branch and submit a Pull|Merge Request

:red_circle: Create my branch and commit on it only

## Continuous integration pipeline (CI)

* CI **badge** must be present at the top of the `README.md` file

* CI must run on every commit of **main branch**

* CI must run on every commit of a **Pull|Merge Request**

* CI must **block** the completion of a Pull|Merge Request if there is an error

## Ansible lint

`ansible-lint` MUST be ran in the CI pipeline

```bash
# installs ansible-lint
pip install "ansible-lint[yamllint]"

# validates the source code
ansible-lint
```

## Ansible inventories

Inventories can be:

* Dynamic (preferred)
  * HTTP call
  * Cloud providers

* Static
  * Git repository
  * Shared folder

:bulb: [yaani](https://github.com/a-delannoy/yaani) can be used to merge multiple sources

## Readability

* Name all the things explicitly: plays, tasks, variables
* Use native YAML: avoid key=value shorthand
* Prefer modules over commands
* Clean up debug messages

## References

* [Ansible Best Practices](https://ansible.github.io/workshops/decks/ansible_best_practices.pdf)

## Samples

* [devpro/ansible-system-collection](https://github.com/devpro/ansible-system-collection)

## Bye for now

You can go back to the presentation [home page](./index.html)
