# Install ZSH.
apt-get install zsh -y

# Clone Oh-My-Zsh.
git clone git://github.com/robbyrussell/oh-my-zsh.git /home/vagrant/.oh-my-zsh

# Copy Robby's .zshrc over as .zshrc-robby for reference purposes only.
cp /home/vagrant/.oh-my-zsh/templates/zshrc.zsh-template /home/vagrant/.zshrc-robby

# Clone HomesteadAfter files.
git clone git://github.com/mikeerickson/HomesteadAfter.git /home/vagrant/.homestead-after

# Copy out .zshrc and theme.
cp /home/vagrant/.homestead-after/.zshrc /home/vagrant/.zshrc
cp /home/vagrant/.homestead-after/codedungeon-homestead.zsh-theme /home/vagrant/.oh-my-zsh/themes

# Copy out .vimrc.
cp /home/vagrant/.homestead-after/.vimrc /home/vagrant/.vimrc

# Copy out .gitconfig and setup git user.
cp /home/vagrant/.homestead-after/.gitconfig /home/vagrant/.gitconfig
#git config --global user.name "John Madden"
#git config --global user.email "john@example.com"

# Set default shell.
chsh -s /usr/bin/zsh vagrant

# Final message.
echo '*****'
echo 'Done installing HomesteadAfter extras <3'
echo 'Note: Git user has not been set up!'
echo 'You can set up git user via gituser alias.'
