#!/bin/bash

# exec ./sujet2.sh
files=$(yad --width=900 --height=400 --title="Menu" \
   --text="veuillez entrer votre choix:"\
   --button='hwinfo:bash -c "exec ./sujet2.sh -li"' \
   --button='lspci:bash -c " exec ./sujet2.sh -lp"' \
   --button='save:bash -c " exec ./sujet2.sh -s "'  \
   --button='help:bash -c " exec ./sujet2.sh -h "'  \
   --button='infoPertinente:bash -c " exec ./sujet2.sh "' --on-top --center \ 
   --on-top \
   --center \
)
