# project-immune-system
🔁 Boucle auto-réparatrice DevOps — Ce projet démontre une infrastructure capable de détecter, corriger, et documenter ses propres incidents en temps réel. Basée sur GitLab CI, Ansible, et un système de supervision (Prometheus, Alertmanager…), la boucle orchestre la résilience technique à travers des playbooks idempotents.

# 🔁 Phoenix Pipeline – La boucle auto-réparatrice DevOps

> Infrastructure qui détecte, corrige, et documente ses propres erreurs automatiquement 🔥🤖

## 🚀 Contexte
Ce projet démontre une boucle de résilience automatisée :
- Détection d’erreurs via Monitoring
- Remontée d’événements vers GitLab CI
- Réparation automatique par Ansible
- Notification et documentation de l’incident

> Idéal pour HomeLab, démonstration DevSecOps, ou portfolio SRE / architecte.

---

## 🧠 Architecture

<img width="1024" height="1024" alt="Copilot_20250802_081149" src="https://github.com/user-attachments/assets/eb0fbdb1-4d25-4c80-ad2a-603002b17d5b" />


- 🔍 **Monitoring** : Prometheus + Alertmanager (ou autre)
- 📡 **CI Trigger** : Webhook vers GitLab CI
- 🧰 **Remédiation** : Ansible playbooks idempotents
- 📊 **Reporting** : Push logs ou notification Slack / email

---

## ⚙️ Technologies

| Stack         | Usage                     |
|---------------|---------------------------|
| GitLab CI     | Orchestration             |
| Ansible       | Réparation automatique    |
| Prometheus    | Supervision               |
| Slack / Email | Notification              |

---

## 🔐 Sécurité
- Exécution limitée par rôles (IAM/gitlab-runner)
- Logs et actions horodatées
- Aucune action destructive : design **idempotent**

---

## 📦 Démarrer

```bash
# Exemple de test local
ansible-playbook repair.yml --extra-vars "issue_type=disk_full"
