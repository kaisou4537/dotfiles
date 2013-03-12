Create a new repository on the command line

touch README.md
git init
git add .
git commit -m "first commit"
git remote add origin git@hogehoge
git push -u origin master

Push an existing repository from the command line

git remote add origin git@hogehoge
git push -u origin master

2回目以降はadd,commit,pushのみを使う
