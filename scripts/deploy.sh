#!/bin/bash
DEPLOY_DIR="~/Learn-it/chintan-patel.github.io/"
buster generate --dir $DEPLOY_DIR 
cd "$DEPLOY_DIR"
echo $DEPLOY_DIR
pwd
git add -A
git commit -m "Generated Blog post"
git push 
