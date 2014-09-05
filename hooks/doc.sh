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

if [ $1 == "build" ]; then

    # Clean up the help files (for local browsing as well as web).
    python hooks/process-help.py

    # Save the current state.
    branch=`git symbolic-ref HEAD 2>/dev/null | cut -d"/" -f 3` # Original branch
    stash_msg=`git stash save "Work in progress before running doc.sh"`

    # Check out the gh-pages branch and required files.
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

    # Update the Github web pages and return to the original state.
    git commit -am "Auto-updated github pages"
    git checkout -f $branch
    if [ "$stash_msg" != "No local changes to save" ]; then
       git stash pop
    fi

elif [ $1 == "release" ]; then

    # Save the current state.
    branch=`git rev-parse --abbrev-ref HEAD`
    git stash save "Work in progress while updating gh-pages branch"

    # Check out the gh-pages branch.
    git checkout gh-pages

    # Update the sitemap.
    python hooks/sitemap_gen.py --config=hooks/sitemap_conf.xml
    git commit -am "Updated sitemap"

    # If desired, rebase and push the changes to origin.
    echo The gh-pages branch has been updated and is currently checked out.
    while true; do
        read -p "Do you want to rebase it and push the changes to origin? " yn
        case $yn in
            [Yy]* ) git rebase -i origin/gh-pages; git push origin gh-pages; break;;
            [Nn]* ) break;;
            * ) echo "Please answer yes or no.";;
        esac
    done

    # Return to the original state.
    git checkout -f $branch
    if [ "$stash_msg" != "No local changes to save" ]; then
       git stash pop
    fi

else
    echo Unknown doc command. Aborting...
fi
