#!/usr/bin/env python
"""Spellcheck the Modelica files.
"""

import os
from glob import glob

# Options
wordfile = os.path.abspath('hooks/qcalc.pws') # Name of custom word file
mowordfile = os.path.abspath('hooks/modelica.pws') # Name of Modelica word file
mofiles = glob('*/*.mo') # Names of the Modelica files

# Remove unused words from the custom word file.
def read(fname):
    """Read all text from a file."""
    with open(fname, 'r') as f:
        return f.read()
mo = "".join(map(read, mofiles))
with open(wordfile, 'r') as f:
    head = f.readline()
    lines = f.readlines()
with open(wordfile, 'w') as f:
    f.write(head)
    for line in lines:
        if mo.find(line.rstrip('\n').rstrip('\r')) != -1:
            f.write(line)

# Check the spelling.
for mofile in mofiles:
    if os.system('aspell --dont-backup --extra-dicts={0} --personal={1} -c '
                 '{2}'.format(mowordfile, wordfile, mofile)):
        raise SystemError("aspell (http://aspell.net/) must be installed.")
