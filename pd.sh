#!/bin/sh

THE_RAND=$(echo -n $RANDOM)

mv ${TARGET} ${TARGET}_$THE_RAND
git checkout deploy
git config --global user.email $EMAIL
git config --global user.name "Build service"
date > generated
rm -r $TARGET
mv ${TARGET}_$THE_RAND $TARGET
git add generated $TARGET
git commit -m 'new release'
git push -u origin-deploy deploy
