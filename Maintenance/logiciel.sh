#!/bin/bash

printf "\e[8;22;50t" 
      E='echo -e';e='echo -en';trap "R;exit" 2
    ESC=$( $e "\e")
   TPUT(){ $e "\e[${1};${2}H";}
  CLEAR(){ $e "\ec";}
  CIVIS(){ $e "\e[?25l";}
   DRAW(){ $e "\e%@\e(0";}
  WRITE(){ $e "\e(B";}
   MARK(){ $e "\e[7m";}
 UNMARK(){ $e "\e[27m";}
      R(){ CLEAR ;stty sane;$e "\ec\e[13;18m\e[J";};
   HEAD(){ DRAW
           for each in $(seq 1 20);do
           $E "x                                                x"
           done
           WRITE;MARK;TPUT 1 1
           $E "                  MENU DU SCRIPT                  ";UNMARK;}
           i=0; CLEAR; CIVIS;NULL=/dev/null
   FOOT(){ MARK;TPUT 21 1
           printf "               CREE PAR LA CAPSULE          💦    ";UNMARK;}
  ARROW(){ read -s -n3 key 2>/dev/null >&2
           if [[ $key = $ESC[A ]];then echo up;fi
           if [[ $key = $ESC[B ]];then echo dn;fi;}
     M0(){ TPUT  3 3; $e "$(tput setab 1)                Mode graphique                $(tput setab 0)";}
     M1(){ TPUT  4 3; $e "$(tput setab 11)$(tput setaf 0)               Test du moniteur               $(tput setaf 15)$(tput setab 0)";}
     M2(){ TPUT  5 3; $e "                Relevé $(tput setab 9) RAM                   $(tput setab 0)";}
     M3(){ TPUT  6 3; $e "                Relevé $(tput setab 9) CPU                   $(tput setab 0)";}
     M4(){ TPUT  7 3; $e "                Relevé $(tput setab 9) disque                $(tput setab 0)";}
     M5(){ TPUT  8 3; $e "                Relevé $(tput setab 9) batterie              $(tput setab 0)";}
     M6(){ TPUT  9 3; $e "                Relevé $(tput setab 9) network               $(tput setab 0)";}
     M7(){ TPUT  10 3; $e "$(tput setab 9)                 Santé $(tput setab 0) disque                ";}
     M8(){ TPUT  11 3; $e "$(tput setab 9)                 infos $(tput setab 0) disque                ";}
     M9(){ TPUT  12 3; $e "$(tput setab 9)$(tput setaf 15)             Info carte graphique             $(tput setaf 15)$(tput setab 0)";}
     M10(){ TPUT  13 3; $e "$(tput setab 1)$(tput setaf 15)              Stress test du CPU              $(tput setab 0)";}
     M11(){ TPUT  14 3; $e "$(tput setab 11)$(tput setaf 0)            Ré/Installer les softs            $(tput setaf 15)$(tput setab 0)";}
     M12(){ TPUT  15 3; $e "$(tput setab 17)$(tput setaf 15)          Lancer Phoronix Test Suite          $(tput setaf 15)$(tput setab 0)";}
     M13(){ TPUT  16 3; $e "$(tput setab 19)$(tput setaf 15)             !Monitoring complet              $(tput setaf 15)$(tput setab 0)";}
     M14(){ TPUT  17 3; $e "$(tput setab 26)$(tput setaf 15)             !Monitoring network              $(tput setaf 15)$(tput setab 0)";}
     M15(){ TPUT  18 3; $e "$(tput setab 33)$(tput setaf 15)                MAJ du système                $(tput setaf 15)$(tput setab 0)";}
     M16(){ TPUT  19 3; $e "$(tput setab 1)                   Quitter                    $(tput setab 0)";}
      LM=16
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
        0) S=M0;SC;if [[ $cur == "" ]];then R;$e "\n$(hardinfo)\n";ES;fi;;
        1) S=M1;SC;if [[ $cur == "" ]];then R;$e "\n$(screentest)\n";ES;fi;;        
        2) S=M2;SC;if [[ $cur == "" ]];then R;$e "\n$(sudo inxi -m)\n";ES;fi;;
        3) S=M3;SC;if [[ $cur == "" ]];then R;$e "\n$(sudo inxi -C)\n";ES;fi;;
        4) S=M4;SC;if [[ $cur == "" ]];then R;$e "\n$(sudo inxi -D)\n";ES;fi;;
        5) S=M5;SC;if [[ $cur == "" ]];then R;$e "\n$(sudo acpi -i)\n";ES;fi;;
        6) S=M6;SC;if [[ $cur == "" ]];then R;$e "\n$(sudo inxi -N)\n";ES;fi;;
        7) S=M7;SC;if [[ $cur == "" ]];then R;$e "\n$(sudo skdump --overall /dev/sdb)\n";ES;fi;;
        8) S=M8;SC;if [[ $cur == "" ]];then R;$e "\n$(sudo smartctl -i /dev/sdb)\n";ES;fi;;
        9) S=M9;SC;if [[ $cur == "" ]];then R;$e "\n$(sudo inxi -G)\n";ES;fi;;
        10) S=M10;SC;if [[ $cur == "" ]];then R;$e "\n$(cd / && cd ~/Maintenance && gnome-terminal -e  "sudo s-tui")\n";ES;fi;;
        11) S=M11;SC;if [[ $cur == "" ]];then R;$e "\n$(cd / && cd ~/Maintenance && gnome-terminal -e  "./preinstall.sh")\n";ES;fi;;
        12) S=M12;SC;if [[ $cur == "" ]];then R;$e "\n$(cd / && cd /usr/share/applications/ && gtk-launch phoronix-test-suite.desktop)\n";ES;fi;; 
        13) S=M13;SC;if [[ $cur == "" ]];then R;$e "\n$(gnome-terminal -e  "sudo nmon")\n";ES;fi;;
        14) S=M14;SC;if [[ $cur == "" ]];then R;$e "\n$(gnome-terminal -e  "sudo iptraf-ng")\n";ES;fi;;   
        15) S=M15;SC;if [[ $cur == "" ]];then R;$e "\n$(cd / && cd ~/Maintenance && gnome-terminal -e  "./maj.sh")\n";ES;fi;;   
        16) S=M16;SC;if [[ $cur == "" ]];then R;exit 0;fi;;
 esac;POS;done

