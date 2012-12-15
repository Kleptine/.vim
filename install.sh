ln -s ~/.vim/.vimrc ~/.vimrc

LINE="export TERM='xterm-256color'"

if ! grep -Fx "$LINE" ~/.profile >/dev/null 2>/dev/null; then
    echo "Updating ~/.profile"

    echo >> ~/.profile
    echo "$LINE" >> ~/.profile
fi

echo "-----------------------------"
echo "  Installing ConqueTerm"
echo "-----------------------------"
vim -c 'so % | q' downloads/conque_2.3.vmb

echo "-----------------------------"
echo "  Installing submodules"
echo "-----------------------------"
git submodule update --init

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "  Make sure to RESTART YOUR BASH/SSH  "
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
