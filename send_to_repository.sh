#!/bin/bash

# Purpose of this program: to automate the code sending to github

git add .

read -p 'Give a description to the commit: ' desc

git commit -m "${desc}"

git push origin master
