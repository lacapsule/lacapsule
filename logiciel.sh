#!/bin/bash

printf "\e[8;16;110t" 
      E='echo -e';e='echo -en';trap "R;exit" 2
    ESC=$( $e "\e")
   TPUT(){ $e "\e[${1};${2}H";}
  CLEAR(){ $e "\ec";}
  CIVIS(){ $e "\e[?25l";}
   DRAW(){ $e "\e%@\e(0";}
  WRITE(){ $e "\e(B";}
   MARK(){ $e "\e[7m";}
 UNMARK(){ $e "\e[27m";}
      R(){ CLEAR ;stty sane;$e "\ec\e[25;16m\e[J";};
   HEAD(){ DRAW
           for each in $(seq 1 15);do
           $E "   x                                                  x                                                   x"
           done
           WRITE;MARK;TPUT 1 5
           $E "                                            MENU DU SCRIPT                                            ";UNMARK;}
           i=0; CLEAR; CIVIS;NULL=/dev/null
   FOOT(){ MARK;TPUT 15 5
           printf "                                         CREE PAR LA CAPSULE                                          ";UNMARK;}
  ARROW(){ read -s -n3 key 2>/dev/null >&2
           if [[ $key = $ESC[A ]];then echo up;fi
           if [[ $key = $ESC[B ]];then echo dn;fi;}
     M0(){ TPUT  4 16; $e " Effectuer les mises à jour ";}
     M1(){ TPUT  5 16; $e " Installer les prérequis    ";}
     M2(){ TPUT  6 16; $e " Informations du système    ";}
     M3(){ TPUT  7 16; $e " Stress test du système     ";}
     M4(){ TPUT  8 16; $e " Tester un site WEB         ";}
     M5(){ TPUT  9 16; $e " Surveiller les ressources  ";}
     M6(){ TPUT  10 16; $e " Installer les prérequis    ";}
     M7(){ TPUT  11 16; $e " Consulter le tutoriel      ";}
     M8(){ TPUT  4 68; $e " Effectuer une sauvegarde ";}
     M9(){ TPUT  5 68; $e " Créer un fichier iso     ";}
     M10(){ TPUT  6 68; $e " Modifier le script       ";}
     M11(){ TPUT  7 68; $e " Surveiller le réseau     ";}
     M12(){ TPUT  8 68; $e " Index des commandes      ";}
     M13(){ TPUT  9 68; $e " Télécharger tout le web  ";}
     M14(){ TPUT  10 68; $e " Visiter La Capsule       ";}
     M15(){ TPUT  11 68; $e " Quitter le script        ";}
      LM=15
   MENU(){ for each in $(seq 0 $LM);do M${each};done;}
    POS(){ if [[ $cur == up ]];then ((i--));fi
           if [[ $cur == dn ]];then ((i++));fi
           if [[ $i -lt 0   ]];then i=$LM;fi
           if [[ $i -gt $LM ]];then i=0;fi;}
REFRESH(){ after=$((i+1)); before=$((i-1))
           if [[ $before -lt 0  ]];then before=$LM;fi
           if [[ $after -gt $LM ]];then after=0;fi
           if [[ $j -lt $i      ]];then UNMARK;M$before;else UNMARK;M$after;fi
           if [[ $after -eq 0 ]] || [ $before -eq $LM ];then
           UNMARK; M$before; M$after;fi;j=$i;UNMARK;M$before;M$after;}
   INIT(){ R;HEAD;FOOT;MENU;}
     SC(){ REFRESH;MARK;$S;$b;cur=`ARROW`;}
     ES(){ MARK;$e " Touche Entrée = Retour au menu principal ";$b;read;INIT;};INIT
  while [[ "$O" != " " ]]; do case $i in
        0) S=M0;SC;if [[ $cur == "" ]];then R;$e "\n$(cd / && cd ~/lacapsule && gnome-terminal -e  "./maj.sh")\n";ES;fi;;
        1) S=M1;SC;if [[ $cur == "" ]];then R;$e "\n$(cd / && cd ~/lacapsule && gnome-terminal -e "./baseInstall.sh")\n";ES;fi;;
        2) S=M2;SC;if [[ $cur == "" ]];then R;$e "\n$(hardinfo    )\n";ES;fi;;
        3) S=M3;SC;if [[ $cur == "" ]];then R;$e "\n$(cd / && cd ~/lacapsule && gnome-terminal -e  "sudo s-tui" )\n";ES;fi;;
        4) S=M4;SC;if [[ $cur == "" ]];then R;$e "\n$(cd / && cd ~/lacapsule && gnome-terminal -e  "./testweb.sh")\n";ES;fi;;
        5) S=M5;SC;if [[ $cur == "" ]];then R;$e "\n$(gnome-terminal -e "htop")\n";ES;fi;;
        6) S=M6;SC;if [[ $cur == "" ]];then R;$e "\n$(cd / && cd ~/lacapsule && gnome-terminal -e "./baseInstall.sh")\n";ES;fi;;
        7) S=M7;SC;if [[ $cur == "" ]];then R;$e "\n$(cd / && cd ~/lacapsule && gedit tuto.txt)\n";ES;fi;;
        8) S=M8;SC;if [[ $cur == "" ]];then R;$e "\n$(gnome-terminal -e "sudo timeshift --create --comments "Dernière sauvegarde" --tags D")\n";ES;fi;;
        9) S=M9;SC;if [[ $cur == "" ]];then R;$e "\n$(cd / && cd ~/lacapsule && gnome-terminal -e "./iso.sh")\n";ES;fi;;
        10) S=M10;SC;if [[ $cur == "" ]];then R;$e "\n$(cd / && cd ~/lacapsule &&  gedit logiciel.sh)\n";ES;fi;;
        11) S=M11;SC;if [[ $cur == "" ]];then R;$e "\n$(cd / && cd ~/lacapsule && gnome-terminal -e "./reseau.sh")\n";ES;fi;;
        12) S=M12;SC;if [[ $cur == "" ]];then R;$e "\n$(cd / && cd ~/lacapsule && gedit tuto_command.txt)\n";ES;fi;;
        13) S=M13;SC;if [[ $cur == "" ]];then R;$e "\n$(cd / && cd ~/lacapsule && gnome-terminal -e "./dlweb.sh")\n";ES;fi;;
        14) S=M14;SC;if [[ $cur == "" ]];then R;$e "\n$(x-www-browser  https://lacapsule.org)\n";ES;fi;;
        15) S=M15;SC;if [[ $cur == "" ]];then R;exit 0;fi;;
 esac;POS;done

