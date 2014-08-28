#!/bin/bash
# Process the help files and prepare a version for github pages.
#
# This script applies the stylesheet, makes special replacements, and updates
# the documentation for the website on the gh-pages branch (for
# http://kdavies4.github.io/QCalc/).
#
# Before running this script:
# 1.  Make sure the documentation is up-to-date.  Use git unused,
#     git spellcheck, and git tidy as needed.
# 2.  Add an entry to the list of revisions in package.mo.
# 3.  Delete the help directory and recreate it using Dymola
#     (File->Export->HTML).
#
# After running this script:
# 1. Push the gh-pages branch to origin (git push origin gh-pages).
# 2. Optional: Use http://www.xml-sitemaps.com/ to update the sitemap.  Put it
#    in the base folder of the the gh-pages branch and push to origin again.
#    Resubmit it in Google Webmaster tools
#    (https://www.google.com/webmasters/tools/sitemap-list?hl=en&siteUrl=http%3A%2F%2Fkdavies4.github.com%2FQCalc%2F#MAIN_TAB=1&CARD_TAB=-1).

# Clean up the help files (for local browsing as well as web).
python hooks/process-help.py

## Update the Github web pages.
branch=`git symbolic-ref HEAD 2>/dev/null | cut -d"/" -f 3` # Original branch
stash_msg=`git stash save "Work in progress before running doc.sh"`
git checkout gh-pages
git checkout $branch -- QCalc/Resources/Documentation # Checkout resources,
git reset HEAD QCalc/Resources/Documentation # but don't track them.

# Update the style sheet.
cp -f QCalc/Resources/Documentation/ModelicaDoc.css stylesheets

# Update the images.
rm images/*
IFS=$'\n' # Allow spaces in file names.
for f in `find QCalc/Resources/Documentation -name "*.png" -o -name "*.svg" -o -name "*.ico" -o -name "*.gif" -o -name "*.pdf"`
do
    cp $f images/
done
cp QCalc/help/*.png images/

# Copy and process the HTML files.
rm *.html
git checkout HEAD google*.html
cp -f QCalc/help/*.html .
mv -f QCalc.html index.html
python hooks/process-gh-pages.py

# Be sure that all of the files are added to git.
git add images
git add *.html

# Update the Github web pages and return to the original branch.
git commit -am "Auto-updated github pages"
#git push origin gh-pages
git checkout -f $branch
if [ "$stash_msg" != "No local changes to save" ]; then
   git stash pop
fi
