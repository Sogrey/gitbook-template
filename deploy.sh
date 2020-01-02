#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

echo -e '\033[32;40m

  ____        U  ___ u    ____      ____     U _____ u   __   __
 / __"| u      \/"_ \/ U /"___|u U |  _"\ u  \| ___"|/   \ \ / /
<\___ \/       | | | | \| |  _ /  \| |_) |/   |  _|"      \ V /
 u___) |   .-,_| |_| |  | |_| |    |  _ <     | |___     U_|"|_u
 |____/>>   \_)-\___/    \____|    |_| \_\    |_____|      |_|
  )(  (__)       \\\\      _)(|_     //   \\\\_   <<   >>  .-,//|(_
 (__) .github.io(__)    (__)__)   (__)  (__) (__) (__)  \_) (__)  
 
'

echo -e "\033[32;40m [1/2] \033[0m commit 2 master branch"

git init
git add -A
git commit -m 'deploy master'

git push -f https://github.com/Sogrey/gitbook-template.git master

echo -e "\033[32;40m [2/2] \033[0m commit 2 gh-pages branch"
# 进入生成的文件夹
cd _book/
# 如果是发布到自定义域名
# echo 'www.yourwebsite.com' > CNAME

git init
git add -A
git commit -m 'deploy gh-pages'

git push -f https://github.com/Sogrey/gitbook-template.git master:gh-pages

echo -e "\033[32;40m done \033[0m "

cd -