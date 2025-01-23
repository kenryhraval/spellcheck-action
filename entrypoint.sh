#!/bin/sh -l
for file in /github/workspace/*.md; do
   proselint "$file"
   writegood "$file"
done


