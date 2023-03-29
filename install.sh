if [[ -d ~/.emacs.d ]]; then
  rm -rd ~/.emacs.d
fi

cp .emacs ~/
cp .dot_files