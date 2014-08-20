#!/usr/bin/env python
# Clean up the HTML help files by making custom replacements.
#
# The first argument is the directory, which defaults to the present directory.
#
# Created by Kevin Davies, 5/30/2012

from datetime import datetime
from sys import argv
from os.path import join
from glob import glob
from natu.util import replace
from sh import git

## Settings
DEFAULT_DIR = '.'

# Replacement pairs
now = datetime.now()
RPLS = [
    # Update the image links.
    ('img src=".*?([^/]+\.png)', r'img src="images/\1'),
    ('img src=".*?([^/]+\.svg)', r'img src="images/\1'),
    ('img src=".*?([^/]+\.gif)', r'img src="images/\1'),
    ('img src=".*?([^/]+\.pdf)', r'img src="images/\1'),
    ('img src=".*?([^/]+\.ico)', r'img src="images/\1'),
    # QCalc.html will be index.html.
    ('QCalc\.html', 'index.html'),
    # Change the title of the main page.
    ('<title>QCalc</title>',
     '<title>QCalc - Modelica units based on quantity calculus</title>'),
    # Add meta title and keywords.
    ('<meta name="HTML-Generator" content="Dymola">',
     r"""<meta name="title" content="Modelica units based on quantity calculus">
<meta name="keywords" content="quantities unit natural units conversion SI CGS Real dimensionality Planck Hartree">
<meta name="date" content="%d-%d-%d">""" % (now.year, now.month, now.day)),
    # Change the meta description of the main page.
    ('<meta name="description" content="Modelica units based on quantity calculus">',
     '<meta name="description" content="Free, open-source Modelica library of units based on quantity calculus">'),
    # Add Microdata markup.
    ('\n<div class="sidebar">',
     """\n<span itemscope itemtype="http://schema.org/SoftwareApplication">
<div class="sidebar">"""),
    ('\n</body>\n?</html>',
     '\n</span></body></html>'),
    ('<p class="sidebar-title">QCalc</p>',
     '<p itemprop="name" class="sidebar-title">QCalc</p>'),
    ('img src="images/icon.gif" class="logo"',
     'img itemprop="image" src="images/icon.gif" class="logo"'),
    ('<img src="images/QCalc.Assemblies.Cells.CellD.png" width="600"/>',
     '<img id="_screenshot8" itemprop="screenshot" src="images/QCalc.Assemblies.Cells.CellD.png" width="600"/>'),
    ("Kevin Davies, Georgia Tech Research Corporation",
     """<span id="_author5" itemprop="author" itemscope itemtype="http://schema.org/Person">
<span itemprop="name">Kevin Davies</span></span>,
<span id="_publisher7" itemprop="publisher" itemscope itemtype="http://schema.org/Organization">
<span itemprop="name">Georgia Tech Research Corporation</span></span>"""),
    # Move the style sheet.
    ('"\.\./Resources/Documentation/ModelicaDoc\.css"',
     '"stylesheets/ModelicaDoc.css"'),
    # Add the Google Analytics script.
    ('(<link rel="shortcut icon" href=".*\.ico">\n)(</head>)',
     r"""\1<script type="text/javascript" src="javascripts/analytics.js"></script>
\2"""),
    # Move the icon.
    ('"\.\./Resources/Documentation/favicon\.ico"',
     '"images/favicon.ico"'),
    # Remove the self-reference.
    ("""Updates to .* may be available online at the *
.*main project site.*
.*Modelica libraries page.*""",
     ''),
    # Add Google custom search.
    ("""(Blocks</a></li> *
 *</ul> *
)( *</div>)""",
     r"""\1
<h3>Search</h3>
    <script>
      (function() {
        var cx = '001356158537703621276:zgkymhxjrkw';
        var gcse = document.createElement('script');
        gcse.type = 'text/javascript';
        gcse.async = true;
        gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
            '//www.google.com/cse/cse.js?cx=' + cx;
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(gcse, s);
      })();
    </script>
    <gcse:search></gcse:search>
\2"""),
    # Link some files to GitHub instead.
    ('href="\.\./\.\./load\.mos"',
     'href="https://github.com/kdavies4/QCalc/blob/master/load.mos"'),
    ('href="\.\./Resources/quantities\.xls"',
     'href="https://github.com/kdavies4/QCalc/blob/master/QCalc/Resources/quantities.xls?raw=true"'),
    ('href="\.\./Resources/Documentation/QCalc/Bases/unit-systems\.cdf"',
     'href="https://github.com/kdavies4/QCalc/blob/master/QCalc/Resources/Documentation/Units/Bases/unit-systems.cdf?raw=true" download'),
    ]

# Process the arguments.
try:
    directory = argv[1]
except IndexError:
    directory = DEFAULT_DIR

# Replace the text.
fnames = glob(join(directory, '*.html'))
replace(fnames, RPLS)

# Add the download link.
try:
    commit = git('rev-list', '--tags', '--max-count=1').stdout.rstrip()
    lastversion = git.describe('--tags', commit).stdout.rstrip()
    # This is simpler but doesn't always return the latest tag:
    # lastversion = git.describe('--tag', abbrev=0).stdout.rstrip()
except ErrorReturnCode_128:
    pass  # No tags recorded; don't add a download link
else:
    date = git.log('-1', lastversion,
                   date='short', format='%ad').stdout[8:18]

    # Add the download link.
    rpl = ("(</gcse:search>)",
     r"""\1

<h3>Download</h3>
    <ul>
      <li><span itemprop="downloadUrl"><a href="https://github.com/kdavies4/QCalc/archive/{0}.zip">Latest version<br>({0}, {1})</a></span></li>
    </ul>""".format(lastversion, date))

    replace(fnames, [rpl])
