# Get to the Travis build directory, configure git and clone the repo
cd $TRAVIS_BUILD_DIR
git config --global user.email "travis@travis-ci.org"
git config --global user.name "travis-ci"

# Commit and Push the Changes
cp ./CNAME ./_book/
cd _book
git init
git checkout -b gh-pages
git remote add origin https://${GH_TOKEN}@github.com/geoah/ink-protocol
git add -f .
git commit -m "Update documentation on successful travis build $TRAVIS_BUILD_NUMBER auto-pushed to gh-pages"
git push -fq origin gh-pages
