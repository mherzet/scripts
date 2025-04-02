AZUREPAT=$AZUREPAT
AZUSERNAME=$AZUSERNAME
AZUSER_EMAIL=$AZUSER_EMAIL
AZORG=$AZORG
git clone https://github.com/mherzet/Dev-SourceAVD
cd Dev-SourceAVD
rm -rf .git

cd ..
GIT_CMD_REPOSITORY="https://$AZUSERNAME:$AZUREPAT@dev.azure.com/$AZORG/Project-GithubSourceAVD/_git/Project-GithubSourceAVD"
git clone $GIT_CMD_REPOSITORY

cp -r Dev-SourceAVD/* Project-GithubSourceAVD/

cd Project-GithubSourceAVD

git config --global user.email "$AZUSER_EMAIL"
git config --global user.name "$AZUSERNAME"

git add .
git commit -m "sync from git to azure"

git push
