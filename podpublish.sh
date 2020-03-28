#!/bin/sh

echo "Enter Spec Version: (e.g. 1.0.0)"

read version

git add .

git commit -m "${version} publish."

git push origin master

git tag ${version}

git push --tags

pod repo push ALSpec UMengSDK.podspec \
 --sources='git@github.com:aliriolau/ALSpec.git,https://github.com/CocoaPods/Specs.git' \
 --allow-warnings
