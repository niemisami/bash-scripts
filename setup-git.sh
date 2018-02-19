
# Git setup
echo 'Install and setup basic information'
apt-get install git
git config --global user.email $USER_EMAIL
git config --global user.name $USER_NAME

echo 'Setup common aliases'

git config --global alias.cm 'commit -m'
git config --global alias.st 'status'
git config --global alias.amend 'commit --no-edit --amend'
git config --global alias.lg "log --graph --pretty=format:'%C(auto)%h %C(cyan)%cr | %C(auto)%d%Creset%s %C(blue ul bold)%an%Creset' --date=relative"
# Show details about last commit
git config --global alias.lgl 'log -p -1'

## Userful scripts to add in .gitconfig
# Search commits by name
# !git log --pretty=format:'%C(auto)%h %C(cyan)%cr | %C(auto)%d%Creset%s %C(blue ul bold)%an%Creset' --date=relative | grep

# Get commits n days before today
#!f() { \
#   git log --after=\"$(date -j -v-$1d +%Y-%m-%d)\" --oneline; \
#}; f
#git config --global alias.

# Push only the current or specified branch 
git config --global push.default simple
# If you want that git automatically pushes and merges all branches toggle this command
#git config --global push.default matching


