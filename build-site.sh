# This file is used for building PR preview with Netlify
git clone https://github.com/bioimage-io/bioimage.io.git bioimage.io
cp site.config.json ./bioimage.io
cp -R public ./bioimage.io
cd ./bioimage.io
npm ci
npm run build
mv ./dist ../
