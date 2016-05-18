if [ -d /mnt/c/WINDOWS ] || [ $LC_WINDOWS10 ]; then
  export WINDOWS10=1
fi
if [ $WINDOWS10 ]; then
  export LC_WINDOWS10=$WINDOWS10
fi
