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

* 🚫 Présentation exhaustive
* 🚫 Discours vendeur
* 🚫 Solution propriétaire / coûteuse
* ✅ Conseils pratiques
* ✅ Actions rapides
* ✅ Outils (réellement) open-source

---
layout: intro-image-right
image: 'https://devpro.github.io/presentations/assets/images/tom-cruise--m-i-ghost-protocol-climbing-building.jpg'
---

# Partie I - Surfaces d'attaque

---

# Conteneur et centre de données

<!-- L'approche traditionnelle des outils de sécurité système ne marche pas avec les conteneurs -->

<img src="https://devpro.github.io/presentations/assets/images/container-inside.png" alt="Container & datacenter" class="m-8 ml-50 h-100" />

---

# Orchestration de conteneurs

<!-- Clusters Kubernetes, nodes = serveurs (VMs) -->

<img src="https://devpro.github.io/presentations/assets/images/kubernetes-architecture.png" alt="Kubernetes architecture" class="ml-20 h-105" />

---

# Construction d'une image de conteneur

<!-- Dockerfile, registre -->

<img src="https://devpro.github.io/presentations/assets/images/container-build.png" alt="Container build" class="m-5 ml-10 h-100" />

---

# Chaîne d'approvisionnement

<!-- Base de code, CI/CD pipelines, registre d'images, registre de charts Helm ; exemple avec images sur DockerHub, charts Helm -->

<img src="https://devpro.github.io/presentations/assets/images/continuous-delivery-pipeline.png" alt="Container build" class="m-20 ml-5 h-65" />

---

# Atelier - Recherche d'une faille

<!-- Tableau blanc "Brainstorming - Hack the container" -->

<img src="https://devpro.github.io/presentations/assets/images/tom-cruise-m-i-vault.jpeg" alt="Tom Cruise in a Vault for M-I" class="m-8 ml-40 h-80 rounded shadow" />

---
layout: intro-image-right
image: 'https://devpro.github.io/presentations/assets/images/tom-cruise-m-i-dead_reckoning_hill.jpeg'
---

# Partie II - Stratégie de sécurisation

---

# Les 4 C's de la sécurité Cloud native

<img src="https://kubernetes.io/images/docs/4c.png" alt="4 layers in security" class="m-8 ml-40 h-80 rounded shadow" />

Source: [kubernetes.io/docs/concepts/security/overview](https://kubernetes.io/docs/concepts/security/overview/)

---

# Cluster Kubernetes

* Recommendation de configuration
  * [CIS Benchmark (Center for Internet Security)](https://www.cisecurity.org/benchmark/kubernetes)
  * [kube-bench](https://github.com/aquasecurity/kube-bench)

* Communication sécurisée
  * [Ingress with TLS (Kubernetes)](https://kubernetes.io/docs/concepts/services-networking/ingress/#tls)

* Contrôle d'accès
  * [Role Based Access Control (Kubernetes)](https://kubernetes.io/docs/reference/access-authn-authz/rbac/)

* Restrictions réseau
  * [Network Policies (Kubernetes)](https://kubernetes.io/docs/concepts/services-networking/network-policies/)

---

# Système d'exploitation

* Durcissement des systèmes
  * [AppArmor](https://kubernetes.io/docs/tutorials/security/apparmor/)
  * [seccomp](https://kubernetes.io/docs/tutorials/security/seccomp/)

---

# Exécution du conteneur

* Admission & policies
  * [Kubewarden](https://www.kubewarden.io/)
  * [OPA Gatekeeper](https://open-policy-agent.github.io/gatekeeper/website/) (Open Policy Agent)
  * [Pod Security Admission (Kubernetes)](https://kubernetes.io/docs/concepts/security/pod-security-admission/)

* Bacs à sable
  * [gVisor](https://gvisor.dev/)
  * [Kata Containers](https://katacontainers.io/)
  * [Runtime Class (Kubernetes)](https://kubernetes.io/docs/concepts/containers/runtime-class/)

* Immutabilité
  * [Security Context (Kubernetes)](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)

---

# Image du conteneur

* Images de base
  * [SUSE BCI](https://registry.suse.com/#bci) (Base Container Images)

* Définition de l'image
  * [Dockerfile best practices](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/)

* Analyse d'image (pipelines CI/CD + registres)
  * [Clair](https://quay.github.io/clair/)
  * [NeuVector](https://open-docs.neuvector.com/)
  * [Trivy](https://aquasecurity.github.io/trivy)

---

# Supervision active

* Analyse comportementale
  * [Cilium](https://cilium.io/)
  * [Falco](https://falco.org/docs/)
  * [NeuVector](https://open-docs.neuvector.com/)

* Dépannage
  * [Audit (Kubernetes)](https://kubernetes.io/docs/tasks/debug/debug-cluster/audit/)

---

# Techniques de sécurité (1/2)

* Principes
  * Least privilege
  * Zero Trust

* Conformités
  * GDPR (General Data Protection Regulation)
  * HIPAA (Health Insurance Portability and Accountability Act)
  * ...

---

# Techniques de sécurité (2/2)

* Fonctionnalités
  * Analyse du traffic Nord-Sud et Est-Ouest (externe-interne et interne-interne)
  * Détection des CVE (Common Vulnerabilities and Exposures)
  * Pare-feu applicatif internet (WAF)
  * Prévention contre les pertes de donnée (DLP)
  * Protection contre les dérives (Drift) sur réseau, fichiers, traitements
  * Détection des menaces connues (OWASP)

---

# Points d'attention

* Analyse des images
  * Statique vs en cours d'exécution
  * Ponctuelle (CI/CD) vs régulière

* Différence dans le comportement
  * Détection (après-coup) vs protection (empêchement)

* Pratiques DevOps
  * Cycles courts (agilité, CI/CD)
  * Shift-Left
  * DevSecOps != personne/équipe
  * Outils accessibles à tous
  * Automatisation (as-code)

---
layout: image-right
image: 'https://devpro.github.io/presentations/assets/images/tom-cruise-m-i-fallout-jump-plane.jpg'
---

# Démo - Sales Portal

<!-- Codebase: https://github.com/devpro/sales-portal -->

* Infrastructure Cloud (**Azure**)
* Clusters Kubernetes (**AKS**)
* Base de données NoSQL (**MongoDB**)
* Applications web (**Angular**)
* API REST (**.NET**)
* Chaîne d'assemblage (**GitHub**)

<!-- Web app: https://sales-portal.20.31.7.5.sslip.io/ -->

---

# Annexes - Liens

* [Evènement meetup](https://www.meetup.com/fr-FR/devops-geneve/events/298652964/)
* [CKS Certification Study Guide](https://github.com/devpro/learn-kubernetes/tree/main/docs/certifications/cks)
