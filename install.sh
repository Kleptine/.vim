
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

echo "-----------------------------"
echo "  Installing useful terminal tools."
echo "-----------------------------"

echo "-----------------------------"
echo "  fasd "
echo "-----------------------------"
sudo apt-get install make
mkdir ~/.fasd-install
cd ~/.fasd-install
git clone https://github.com/clvv/fasd.git
cd fasd
sudo make install 
cd ~/.vim

echo "-----------------------------"
echo "  ZSH "
echo "-----------------------------"
sudo apt install zsh
sudo chsh -s $(which zsh)

echo "-----------------------------"
echo "  Oh-my-zsh"
echo "-----------------------------"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "-----------------------------"
echo "  Linking RC files. "
echo "-----------------------------"
ln -s ~/.vim/.vimrc ~/.vimrc
ln -s ~/.vim/.zshrc ~/.zshrc

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "  Make sure to RESTART YOUR BASH/SSH  "
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
