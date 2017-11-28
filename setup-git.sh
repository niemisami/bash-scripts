
# Git setup
echo 'Install and setup basic information'
apt-get install git
git config --global user.email $USER_EMAIL
git config --global user.name $USER_NAME

echo 'Setup common aliases'

git config --global alias.cm 'commit -m'
git config --global alias.st 'status'
git config --global alias.amend 'commit --no-edit --amend'
#git config --global alias.

# Push only the current or specified branch 
git config --global push.default simple
# If you want that git automatically pushes and merges all branches toggle this command
#git config --global push.default matching


