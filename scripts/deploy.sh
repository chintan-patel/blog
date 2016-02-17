#!/bin/bash
npm start --production &
pip install buster
buster setup --gh-repo=git@github.com:chintan-patel/chintan-patel.github.io.git
buster generate 
buster deploy
./node_modules/ghost-sitemap/index.js generate
./node_modules/ghost-sitemap/index.js ping all 
pgrep node index | xargs kill
