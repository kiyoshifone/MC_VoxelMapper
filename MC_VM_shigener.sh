#!bin/bash
in=
out=$(mktemp)
dir=cache/ /

OVERWORLD=
NETHER=
END=

txt1="Erase all waypoints in shigen-"
txt2="Erase map of shigen-"
txt3="? (y/n) \n"

for world in OVERWORLD NETHER END
do
  echo -ne $txt1${world}$txt3
  read ans
  if [ "$ans" = "y" ] ; then
      weld=`eval echo '$'$world`
      sed -e /$weld/d "$in" > "$out"
      mv $out $in
  fi
  
  echo -ne $txt2${world}$txt3
  read ans
  if [ "$ans" = "y" ] ; then
      rm -r $dir$weld/
  fi
done
