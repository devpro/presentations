---
theme: apple-basic
layout: intro
---

# Sécurité des conteneurs

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
layout: two-cols
---

# Construction d'une image

<!-- Dockerfile, registre -->

* Exemple ([Docker getting started](https://docs.docker.com/get-started/))

```dockerfile
# Dockerfile
FROM node:18-alpine
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000
```

<Arrow x1="520" y1="140" x2="140" y2="130" />

<Arrow x1="620" y1="280" x2="400" y2="230" />

::right::

# &nbsp;

<img src="https://devpro.github.io/presentations/assets/images/container-build.png" alt="Container build" class="m-15 ml-10 h-80" />

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

# Les 4 C de la sécurité Cloud native

<img src="https://kubernetes.io/images/docs/4c.png" alt="4 layers in security" class="m-8 ml-40 h-80 rounded shadow" />

Source: [kubernetes.io/docs/concepts/security/overview](https://kubernetes.io/docs/concepts/security/overview/)

---
layout: two-cols
---

# Cluster Kubernetes

<v-clicks>

* Recommendation de configuration
  * [CIS Benchmark (Center for Internet Security)](https://www.cisecurity.org/benchmark/kubernetes)
  * [kube-bench](https://github.com/aquasecurity/kube-bench)

* Communication sécurisée
  * [Ingress with TLS (Kubernetes)](https://kubernetes.io/docs/concepts/services-networking/ingress/#tls)

</v-clicks>

::right::

# &nbsp;

<v-clicks>

* Contrôle d'accès
  * [Role Based Access Control (Kubernetes)](https://kubernetes.io/docs/reference/access-authn-authz/rbac/)

* Restrictions réseau
  * [Network Policies (Kubernetes)](https://kubernetes.io/docs/concepts/services-networking/network-policies/)

</v-clicks>

---
layout: two-cols
---

# Exécution du conteneur

<v-clicks>

* Admission & policies
  * [Kubewarden](https://www.kubewarden.io/)
  * [OPA Gatekeeper](https://open-policy-agent.github.io/gatekeeper/website/) (Open Policy Agent)
  * [Pod Security Admission (Kubernetes)](https://kubernetes.io/docs/concepts/security/pod-security-admission/)

* Bacs à sable
  * [gVisor](https://gvisor.dev/)
  * [Kata Containers](https://katacontainers.io/)
  * [Runtime Class (Kubernetes)](https://kubernetes.io/docs/concepts/containers/runtime-class/)

</v-clicks>

::right::

# &nbsp;

<v-clicks>

* Durcissement des systèmes
  * [AppArmor](https://kubernetes.io/docs/tutorials/security/apparmor/)
  * [seccomp](https://kubernetes.io/docs/tutorials/security/seccomp/)

* Immutabilité
  * [Security Context (Kubernetes)](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)

</v-clicks>

---
layout: two-cols
---

# Image du conteneur

<v-clicks>

* Images de base
  * [Alpine Linux](https://github.com/alpinelinux)
  * [Bitnami Containers Libary](https://github.com/bitnami/containers)
  * [SUSE BCI](https://registry.suse.com/#bci) [^1]

* Catalogue d'applications
  * [Bitnami Application Catalog](https://bitnami.com/stacks)
  * [Docker Hub](https://hub.docker.com/)
  * [SUSE Application Collection](https://apps.rancher.io/)

</v-clicks>

::right::

# &nbsp;

<v-clicks>

* Définition de l'image (pipelines CI/CD)
  * [Dockerfile best practices](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/)
  * [MegaLinter](https://megalinter.io/latest/)
  * [Sonar](https://www.sonarsource.com/)

* Analyse d'image (pipelines CI/CD [^2] + registres)
  * [Clair](https://quay.github.io/clair/)
  * [NeuVector](https://open-docs.neuvector.com/)
  * [Trivy](https://aquasecurity.github.io/trivy)

</v-clicks>

[^1]: [1] Base Container Images
[^2]: [2] Continuous Integration/Continuous Delivery

<style>
.footnotes-sep {
  display: none;
}
.footnotes {
  margin-top: 5rem;
  @apply text-sm opacity-75;
}
.footnote-item p {
  margin-top: 0;
  margin-bottom: 0;
}
.footnote-backref {
  display: none;
}
</style>

---

# Supervision active

<v-clicks>

* Analyse comportementale
  * [Cilium](https://cilium.io/)
  * [Falco](https://falco.org/docs/)
  * [NeuVector](https://open-docs.neuvector.com/)

* Dépannage
  * [Audit (Kubernetes)](https://kubernetes.io/docs/tasks/debug/debug-cluster/audit/)

</v-clicks>

---
layout: cover
---

# Trop d'informations ?

<img src="https://devpro.github.io/presentations/assets/images/tom-cruise-m-i-glass-water-breaks.jpg" alt="Eviter la deferlente" class="m-8 ml-40 h-80 rounded shadow" />

---
layout: two-cols
---

# Conception de la solution

<v-clicks>

* Principes
  * Least privilege
  * Zero Trust

* Conformités
  * GDPR [^1]
  * HIPAA [^2]

</v-clicks>

::right::

# &nbsp;

<v-clicks>

* Fonctionnalités
  * Analyse du traffic Nord-Sud et Est-Ouest
  * Détection des CVE [^3]
  * Gestion des menaces connues (OWASP [^4])
  * Impact faible sur les ressources
  * Pare-feu applicatif internet (WAF)
  * Prévention contre les pertes de donnée (DLP)
  * Protection contre les dérives (Drift)

</v-clicks>

[^1]: [1] General Data Protection Regulation
[^2]: [2] Health Insurance Portability and Accountability Act
[^3]: [3] Common Vulnerabilities and Exposures ([cve.org](https://www.cve.org/))
[^4]: [4] Open Worldwide Application Security Project ([owasp.org](https://owasp.org/))

<style>
.footnotes-sep {
  display: none;
}
.footnotes {
  margin-top: 4rem;
  @apply text-sm opacity-75;
}
.footnote-item p {
  margin-top: 0;
  margin-bottom: 0;
}
.footnote-backref {
  display: none;
}
</style>

---
layout: two-cols
---

# Points d'attention

<v-clicks>

* Analyse des images
  * Statique vs en cours d'exécution
  * Ponctuelle (CI/CD) vs régulière

* Différence dans le comportement
  * Détection (après-coup) vs protection (empêchement)

</v-clicks>

::right::

# &nbsp;

<v-clicks>

* Pratiques DevOps
  * Cycles courts (agilité, CI/CD)
  * Shift-Left
  * DevSecOps != personne/équipe
  * Outils accessibles à tous
  * Automatisation (as-code)

</v-clicks>

---
layout: intro-image-right
image: 'https://devpro.github.io/presentations/assets/images/tom-cruise-m-i-fallout-jump-plane.jpg'
---

# Partie III - Démonstrations

---

# Images de base .NET

* Analyse des images officielles de Microsoft et SUSE

```bash
alias trivy="docker run -it --rm
-v trivy-cache:/root/.cache/ -v /var/run/docker.sock:/var/run/docker.sock:ro -v $HOME/.kube/config:/root/.kube/config \
aquasec/trivy:latest"

trivy image mcr.microsoft.com/dotnet/aspnet:8.0 | grep Total

# Total: 86 (UNKNOWN: 0, LOW: 60, MEDIUM: 22, HIGH: 3, CRITICAL: 1)

trivy image registry.suse.com/bci/dotnet-aspnet:8.0 | grep Total

# Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

<!--
trivy image mcr.microsoft.com/dotnet/sdk:8.0 | grep Total
Total: 119 (UNKNOWN: 0, LOW: 81, MEDIUM: 26, HIGH: 11, CRITICAL: 1)
trivy image nginx:alpine | grep Total
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
-->

---
layout: two-cols
---

# Microservice architecture

<!-- Codebase: https://github.com/devpro/sales-portal -->

<br>

* Infrastructure Cloud (**Azure**)
* Clusters Kubernetes (**AKS**)
* Chaîne d'assemblage (**GitHub**)
* Front avec Web SPA (**Angular**)
* Back avec API REST (**.NET**)
* Base de données NoSQL (**MongoDB**)

::right::

# &nbsp;

<br>

<img src="https://raw.githubusercontent.com/devpro/sales-portal/main/assets/images/salesportal-components.png" alt="Sales portal components" class="h-50" />

Source: [devpro/sales-portal](https://github.com/devpro/sales-portal)

<!-- Web app: https://sales-portal.20.31.7.5.sslip.io/ -->

---

# Check-list

<!-- cis-1.7-profile & aks-profile for CIS Benchmark for Rancher 2.8.1 & AKS with Kubernetes 1.27.7 -->

* ✅ Image validation in CI
* ✅ RBAC
* ✅ Registry scanning
* ✅ CIS Benchmark
* ✅ Zero-trust

---

# Annexes - Liens

* [Evènement meetup](https://www.meetup.com/fr-FR/devops-geneve/events/298652964/)
* [CKS Certification Study Guide](https://github.com/devpro/learn-kubernetes/tree/main/docs/certifications/cks)
