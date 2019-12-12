#!/bin/bash

set -e

# List of charts
charts=("gitea")

# Lets generate the packages!
mkdir tmp
cd tmp
for i in "${charts[@]}"; do
  git clone https://github.com/k8s-land/$i-chart $i
  helm package -f $i/values.yaml --sign --key "Charlie Drage <charlie@charliedrage.com>" --keyring ~/.gnupg/secring.gpg $i
done

# Move the files
cd ..
mv tmp/*.tgz* .
rm -rf tmp

helm repo index .

#git add .
#DATE=`date`
#git commit -m "Update $DATE"
#git push origin gh-pages
#git checkout master
