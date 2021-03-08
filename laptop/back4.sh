#!/bin/bash
select1='feh --bg-fill --no-fehbg'
select2='xwallpaper --zoom'
select3='xloadimage -onroot -fullscreen'
select4='xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image -s'
select5='hsetroot -full'

prog=$select2
[ "$#" -lt "1" ] || [ "$#" -gt "2" ] && {  echo -e "ERROR : args number invalid \n $0 speed /path/name.gif" ; echo "try 0.010 as speed" ; exit 1 ; }
dir=/home/recompiler/back4  
#example of speed  : 0.010
speed=$1
name=$2


[[ "$name" == "" ]] && { name=$speed ; speed=${name##*-} ; }

hash=`md5sum $name | cut -f1 -d" "`

[[ ! -d $dir ]] && mkdir $dir 

[[ ! -d $dir/$hash ]] && { mkdir $dir/$hash ; echo "spliting .." ; convert -coalesce $name $dir/$hash/$hash.png ; echo ok ; }

while : ; do for i in ` ls $dir/$hash -v ` ; do $prog $dir/$hash/$i ; sleep $speed ; done ; done    
   
