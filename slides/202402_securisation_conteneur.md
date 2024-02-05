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

<!-- Clusters Kubernetes, nodes = serveurs (VMs) -->

<img src="https://devpro.github.io/presentations/assets/images/kubernetes-architecture.png" alt="Kubernetes architecture" class="m-8 ml-40 h-100" />

---

# Construction d'une image

<!-- Dockerfile, registre -->

<img src="https://devpro.github.io/presentations/assets/images/container-build.png" alt="Container build" class="m-8 ml-30 h-100" />

---

# Chaîne d'approvisionnement

<!-- Base de code, CI/CD pipelines, registre d'images, registre de charts Helm ; exemple avec images sur DockerHub, charts Helm -->

<img src="https://devpro.github.io/presentations/assets/images/continuous-delivery-pipeline.png" alt="Container build" class="m-18 ml-5 h-65" />

---

# Recherche d'une faille

<!-- Tableau blanc "Brainstorming - Hack the container" -->

<img src="https://devpro.github.io/presentations/assets/images/tom-cruise-m-i-vault.jpeg" alt="Tom Cruise in a Vault for M-I" class="m-8 ml-40 h-80 rounded shadow" />

---

# Les 4 C's de la sécurité Cloud native

<img src="https://kubernetes.io/images/docs/4c.png" alt="4 layers in security" class="m-8 ml-40 h-80 rounded shadow" />

Source: [kubernetes.io/docs/concepts/security/overview](https://kubernetes.io/docs/concepts/security/overview/)

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

# Cluster Kubernetes

* CIS Benchmark (Center for Internet Security)
  * [cisecurity.org/benchmark/kubernetes](https://www.cisecurity.org/benchmark/kubernetes)
  * [kube-bench](https://github.com/aquasecurity/kube-bench)

* Ingress avec TLS
  * [kubernetes.io/docs/concepts/services-networking/ingress](https://kubernetes.io/docs/concepts/services-networking/ingress/#tls)

* RBAC (Role Based Access Control)
  * [kubernetes.io/docs/reference/access-authn-authz/rbac/](https://kubernetes.io/docs/reference/access-authn-authz/rbac/)

* Network Policies

---

# Système d'exploitation

* Outils de durcissement
  * [AppArmor](https://kubernetes.io/docs/tutorials/security/apparmor/)
  * [seccomp](https://kubernetes.io/docs/tutorials/security/seccomp/)

---

## Exécution du conteneur

* Bacs à sable
  * [kubernetes.io/docs/concepts/containers/runtime-class](https://kubernetes.io/docs/concepts/containers/runtime-class/)
  * [gVisor](https://gvisor.dev/)
  * [Kata Containers](https://katacontainers.io/)

* Admission & policies
  * [kubernetes.io/docs/concepts/security/pod-security-admission/](https://kubernetes.io/docs/concepts/security/pod-security-admission/)
  * [OPA Gatekeeper](https://open-policy-agent.github.io/gatekeeper/website/) (Open Policy Agent)
  * [Kubewarden](https://www.kubewarden.io/)

---

## Image du conteneur

* Images de base
  * [SUSE BCI](https://registry.suse.com/#bci) (Base Container Images)

* Définition de l'image
  * [docs.docker.com/develop/develop-images/dockerfile_best-practices/](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/)

* Scan d'image (pipelines CI/CD + registres)
  * [Clair](https://quay.github.io/clair/)
  * [Trivy](https://aquasecurity.github.io/trivy)

---

# Liens

* [Evènement meetup](https://www.meetup.com/fr-FR/devops-geneve/events/298652964/)
