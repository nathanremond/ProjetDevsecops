# Projet Devsecops

### Consignes d'installation

1) Installer choco

- Veillez au préalable à ouvrir un terminal en mode administrateur.
- Allez sur https://chocolatey.org/install et copiez la commande d'installation dans votre terminal.

2) Installer minikube

- Exécutez `choco install minikube` dans votre terminal.
- Vérifiez l'installation de minikube en exécutant `choco list minikube`.


3) Activer ingress

- Exécutez `minikube addons enable ingress` dans votre terminal.
- Vérifiez l'activation de ingress en exécutant `kubectl get pods -n ingress-nginx`.

### Lancement de l'application

- Exécutez `minikube start` dans votre terminal.
- Dans un autre terminal, exécutez `minikube tunnel`.

Rendez vous sur http://web.local/

### Mettre à jour l'application

- Allez dans kubernetes/deployment.yml et modifiez le tag de l'image : nathanremond/projetdevsecops:TagImage.
- Allez dans le script deploy.ps1 et et modifiez le tag de l'image pour le build et le push de celle-ci.
- Exécutez `.\deploy.ps1`.

### Arrêter l'application

- Exécutez `minikube stop` dans votre terminal.