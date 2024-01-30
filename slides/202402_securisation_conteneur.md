---
theme: apple-basic
layout: intro
---

# Sécurisation des conteneurs

Meetup du 8 février 2024

<img src="https://secure.meetupstatic.com/photos/event/8/f/6/c/clean_469416716.webp" alt="Logo DevOps Genève" class="m-8 ml-70 h-40 rounded shadow" />

<div class="absolute bottom-10">
  <span class="font-700">
    Bertrand Thomas - Architecte Solution @ SUSE
  </span>
</div>

---
layout: image-right
image: 'https://devpro.github.io/presentations/assets/images/tom-cruise-m-i-2-climbing.jpg'
---

# Objectifs

* 🚫 Approche complète
* 🚫 Discours vendeur
* 🚫 Solution propriétaire / coûteuse
* ✅ Conseils pratiques
* ✅ Actions rapides
* ✅ Outils (réellement) open-source

---

# Conteneur et centre de données

<!-- L'approche traditionnelle des outils de sécurité système ne marche pas avec les conteneurs -->

<img src="https://devpro.github.io/presentations/assets/images/container-inside.png" alt="Container & datacenter" class="m-8 ml-50 h-100" />

---

# Orchestration de conteneurs

<!-- Clusters Kubernetes -->

<img src="https://devpro.github.io/presentations/assets/images/kubernetes-architecture.png" alt="Kubernetes architecture" class="m-8 ml-40 h-100" />

---

# Construction d'une image

<!-- Dockerfile -->

TODO

---

# Chaîne d'approvisionnement

<!-- Base de code, CI/CD pipelines, registre d'images, registre de charts Helm ; exemple avec images sur DockerHub, charts Helm -->

TODO

---

# Les 4 C's de la sécurité Cloud native

<img src="https://kubernetes.io/images/docs/4c.png" alt="4 layers in security" class="m-8 ml-40 h-80 rounded shadow" />

Source: [kubernetes.io/docs/concepts/security/overview](https://kubernetes.io/docs/concepts/security/overview/)

---

# Recherche d'une faille

<img src="https://devpro.github.io/presentations/assets/images/tom-cruise-m-i-vault.jpeg" alt="Tom Cruise in a Vault for M-I" class="m-8 ml-40 h-80 rounded shadow" />

---

# Cluster Kubernetes

CIS benchmark
OPA
Network Policy

## Image du système d'exploitation

## Exécution du conteneur

Isolation

## Image du conteneur

CI/CD
Définition (dockerfile)
SBOM
Image de base

---
layout: image-right
image: 'https://devpro.github.io/presentations/assets/images/tom-cruise-m-i-dead_reckoning_hill.jpeg'
---

# Démo

* Infrastructure Cloud (**Azure**)
* Clusters Kubernetes (**AKS**)
* Applications web (**Angular**)
* API REST (**.NET**)
* Base de données NoSQL (**MongoDB**)
* Chaîne d'assemblage (**GitHub**)

---

# Liens

* [Evènement meetup](https://www.meetup.com/fr-FR/devops-geneve/events/298652964/)
