git config --global user.name 'Cyril Fluck'
git config --global user.email 'github@fluck.fr'

git config --global core.excludesfile '~/.gitignore'

git config --global alias.main-branch '!git symbolic-ref refs/remotes/origin/HEAD | cut -d'/' -f4'
git config --global alias.b 'branch'
git config --global alias.br 'branch -r'
git config --global alias.co 'checkout'
git config --global alias.com '!f(){ git checkout $(git main-branch) $@;}; f'
git config --global alias.dw 'diff --color-words'
git config --global alias.pom '!f(){ git pull origin $(git main-branch) $@;}; f'
git config --global alias.rpo 'remote prune origin'
git config --global alias.st 'status'
