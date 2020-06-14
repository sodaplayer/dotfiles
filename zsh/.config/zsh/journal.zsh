# From tomlockwood/dn

# Daily Notes Aliases
export DN_PATH=~/docs/journal

dn() {
  echo " * $1" >> $DN_PATH/$(date "+%Y-%m-%d")
}

dno() {
  echo " * $2" >> $DN_PATH/$1
}

dnoe() {
  nvim $DN_PATH/$1
}

dnt() {
  echo $(date "+%Y-%m-%d")
  cat $DN_PATH/$(date "+%Y-%m-%d")
}

dnte() {
  nvim $DN_PATH/$(date "+%Y-%m-%d")
}
  
dnv() {
  find $DN_PATH/$1* -type f -exec basename {} \; -exec cat {} \;
}
