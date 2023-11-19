EMACS_CONF_DEST=~/.emacs.d

if [[ -d ~/.emacs.d ]]; then
  rm -rd $EMACS_CONF_DEST
fi

mkdir $EMACS_CONF_DEST

cp init.el $EMACS_CONF_DEST
# cp .dot_files