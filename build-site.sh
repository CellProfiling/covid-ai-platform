# This file is used for building PR preview with Netlify
if [ -d "bioimage.io" ]; then
cd bioimage.io
git stash
git fetch
git checkout master
git reset --hard origin/master
cd ../
else
git clone https://github.com/bioimage-io/bioimage.io.git bioimage.io
fi
cp site.config.json ./bioimage.io
cp -R public ./bioimage.io
cd ./bioimage.io
npm ci
npm run build
mv ./dist ../
