#!/bin/bash
npm start &
pip install buster
buster setup --gh-repo=git@github.com:chintan-patel/chintan-patel.github.io.git
buster generate 
buster deploy
