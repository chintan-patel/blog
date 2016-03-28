#!/bin/bash
npm start --production &
pip install buster
buster setup --gh-repo=git@github.com:chintan-patel/chintan-patel.github.io.git
buster generate 
./node_modules/ghost-sitemap/index.js generate
./node_modules/ghost-sitemap/index.js ping all 
cp sitemap/sitemap.xml static/
buster deploy
pgrep node index | xargs kill
