# lacapsule
Un script bash pour piloter son linux, le mettre à jour, télécharger des ressources sur le web, ajouter des fonctionnalités et effectuer des sauvegardes ou créer un fichier iso.

Pour l'utiliser, aucune installation n'est nécessaire.<br>
________________________________________<br>
׀ ＣＯＭＭＥＮＴ ＬＥ ＴＥＬＥＣＨＡＲＧＥＲ ׀ <br>
̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ <br>

Télécharger le fichier ZIP via le bouton code et le décompresser sur votre /home 

Une fois fait, prenez les droits d'execution sur tous les fichiers contenus dans le dossier :

> sudo chmod +x -R lacapsule

Autre méthode :

Par GIT :

Ouvrir un terminal et taper :

> cd home/$USER

Puis taper :

> git clone https://github.com/lacapsule/lacapsule.git 

Le dossier se trouve à présent dans votre dossier utilisateur.<br>
______________________________________________<br>
׀ ＣＯＭＭＥＮＴ ＥＸＥＣＵＴＥＲ ＬＥ ＳＣＲＩＰＴ ׀ <br>
̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ <br>

Lancer la commande suivante (via un terminal) : 

> ./logiciel.sh 

dans un terminal.

NB: vous pouvez très bien : 
- double-cliquer sur logiciel.sh dans le dossier lacapsule et choisir "ouvrir dans un terminal" 
 
ou bien

- créer un alias en installant gedit via la commande : 

> sudo apt install gedit  

*NB: Vous pouvez aussi utiliser l'éditeur de texte de votre choix*
puis taper 

> gedit ~/.bashrc 

une fois l'installation terminée.
Le fichier bashrc s'ouvre alors dans gedit.
Vous pouvez descendre jusqu'aux lignes contenant le mot "alias" en entête de ligne et ajouter la ligne suivante :

> alias logi='cd / ; ~/lacapsule/./logiciel.sh'

Une fois la ligne ajoutée, enregistrez le fichier, ouvrez un nouvel onglet du terminal ou un nouveau terminal et tapez 

> logi 

puis frappez la touche entrée,
le script s'ouvrira.<br>
________________________________________________________<br>
׀ 	ＬＥＳ ＤＩＦＦＥＲＥＮＴＥＳ ＦＯＮＣＴＩＯＮＮＡＬＩＴＥＳ  ׀ <br>
̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ <br>

![Le menu en image](https://raw.githubusercontent.com/lacapsule/lacapsule/main/img.png)

**Effectuer les mises à jour**<br>
Utilise le script *maj.sh* écrit par Adrien Ferron

**Installer les prérequis**<br>
Utilise le script *baseInstall.sh* écrit par Adrien Ferron

**Informations du système**<br>
Utilise l'outil *hardinfo*

**Stress test du système**<br>
Utilise l'outil *s-tui*

**Tester un site WEB**<br>
Utilise le script *testweb.sh* écrit par Adrien Ferron

**Surveiller les ressources**<br>
Utilise l'outil *htop*

**Télécharger une vidéo Yt**<br>
Utilise le script *youtube.sh* écrit par Adrien Ferron

**Consulter le tutoriel**<br>
Utilise le document texte tuto.txt écrit par Adrien Ferron

**EFfectuer une sauvegarde**<br>
Utilise l'utilitaire *timeshift*

**Créer un fichier iso**<br>
Utilise l'utilitaire *distroshare-ubuntu-imager*

**Modifier le script**<br>
Utilise le script *logiciel.sh* écrit par Adrien Ferron

**Surveiller le réseau**<br>
Utilise l'utilitaire *wireshark*

**Index des commandes**<br>
Utilise le document texte *tuto_command.txt* écrit par Adrien Ferron

**Télécharger tout le web**<br>
Utilise le script *dlweb.sh* écrit par Adrien Ferron

**Visiter La Capsule**<br>
Utilise votre navigateur pour ouvrir le site web de La Capsule

**Quitter le script**<br>
Permet de quitter le script sans fermer le terminal
