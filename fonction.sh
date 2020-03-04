#!/bin/bash 

function afficherViahwinfo ()
{
  cat /proc/cpuinfo  > caract.txt
  yad --title="caracteristiques hardware via hwinfo" --width=500 --height=500 --text-info  < caract.txt
 
}


function afficherVialspci ()
{
  #lspci
  info=`lspci`
  yad --title="caracteristiques hardware via lspci" --text="$info" --width=800 --height=500
}

function NoArguments ()
{
   info=`hwinfo --short`
   yad --title="caracteristiques hardware en general " --text="$info" --width=1000 --height=500 --fontname="Serif bold italic 20"
 
}

function sauvegarder ()
{
  echo "do you want to save those informations ? (y/n)"
            read reponse
            if [ $reponse == "y" ]
            then
            echo "file name :"
            read $fichier
             
                hwinfo --cpu | grep -A4 'Hardware' | head -4 > file
                echo "--------------------------------------" >>  file
                hwinfo --memory | grep -A4 'Hardware' | head -4 >>file
                echo "--------------------------------------" >>  file
                hwinfo --network | grep -A4 'Hardware' | head -4 >>file
                echo "---------------------------------------" >>  file
                hwinfo --gfxcard | grep -A4 'Hardware' | head -4 >>file
              fi
   
  yad --file --filename=/home/fadi/projetBoulbaba/boulbaba1/$fichier.txt --width=500 --height=500
}

function affficherHelp ()
{
   yad --title="help" --width=500 --height=500 --text-info  < help.txt
}

