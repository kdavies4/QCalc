#!/bin/bash
# Check for references that aren't used.

for s in Aronsson2009 BIPM2006 Broman2008 Brown2011 Fritzson2004 Hess2008 Mattsson2008 Modelica2010 NIST2010 Rapaport2004
do
    hits=`find \( -name "*.mo" \) | xargs grep --files-with-matches --max-count=1 --exclude package.mo $s`
    if [ -z "$hits" ]; then
        echo Reference \"$s\" was not found.
    fi
done
echo
echo "Remove the unused references from package.mo (QCalc.UsersGuide.References)."
