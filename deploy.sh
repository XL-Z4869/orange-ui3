rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "update" &&
git branch -M master &&
git remote add origin git@github.com:XL-Z4869/vue3-ui.git &&
git push -f -u origin master &&
cd -
echo https://xl-z4869.github.io/vue3-ui/#/doc/dialog