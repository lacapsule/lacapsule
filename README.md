# lacapsule
Un script bash pour piloter son linux, télécharger des ressources sur le web et effectuer des sauvegardes

Pour l'utiliser, aucune installation n'est nécessaire.<br>
________________________________________<br>
׀ ＣＯＭＭＥＮＴ ＬＥ ＴＥＬＥＣＨＡＲＧＥＲ ׀ <br>
̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ <br>
Par GIT :

> git clone https://github.com/lacapsule/lacapsule.git

Autre méthode :

Télécharger le fichier ZIP, le décompresser sur votre /home et lancer : 

> ./logiciel.sh 

dans un terminal.

NB: vous pouvez très bien : 
- double-cliquer sur logiciel.sh dans le dossier lacapsule et choisir "ouvrir dans un terminal" 
 
ou bien

- créer un alias en installant gedit via la commande : 

> sudo apt install gedit  

puis taper 

> gedit ~/.bashrc 

une fois l'installation terminée.
Le fichier bashrc s'ouvre alors dans gedit.
Vous pouvez descendre jusqu'au lignes contenant le mot alias en entête de ligne et ajouter la ligne suivante :

> alias logi='cd / ; ~/lacapsule/./logiciel.sh'

Une fois la ligne ajoutée, enregistrez le fichier, ouvrez un nouvel onglet du terminal ou un nouveau terminal et tapez 

> logi 

puis frappez la touche entrée,
le script s'ouvrira.<br>
________________________________________________________<br>
׀ 	ＬＥＳ ＤＩＦＦＥＲＥＮＴＥＳ ＦＯＮＣＴＩＯＮＮＡＬＩＴＥＳ  ׀ <br>
̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ <br>

![Le menu en image](https://raw.githubusercontent.com/lacapsule/lacapsule/main/img.png)

**Effectuer les mises à jour**
Utilise le script *maj.sh* écrit par Adrien Ferron

**Installer les prérequis**
Utilise le script *baseInstall.sh* écrit par Adrien Ferron

**Informations du système**
Utilise l'outil *hardinfo*

**Stress test du système**
Utilise l'outil *s-tui*

**Tester un site WEB**
Utilise le script *testweb.sh* écrit par Adrien Ferron

**Surveiller les ressources**
Utilise l'outil *htop*

**
