
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

