#!/bin/bash

source fonction.sh

if [ $# -eq 0 ]
 then 
    NoArguments  ;
 else
   case $@ in 
    "-li")
        afficherViahwinfo ;
       ;;
    "-lp")
        afficherVialspci ;
       ;;
    "-s"|"-save")
       sauvegarder ;
       ;;
    "-h"|"-help")
       affficherHelp  ;
      ;;
     *)
     echo "commande non trouvéé,veuillez taper la commande sujet2.sh -h ou -help pour plus de details "
    esac 
fi
#afficherViahwinfo  ;
#afficherVialspci  ;
#NoArguments  ;
#sauvegarder ;
#affficherHelp ;
