ln -s ~/.vim/.vimrc ~/.vimrc

LINE="export TERM='xterm-256color'"

if ! grep -Fx "$LINE" ~/.profile >/dev/null 2>/dev/null; then
    echo "Updating" ~/.profile

    echo >> ~/.profile
    echo "$LINE" >> ~/.profile
fi
