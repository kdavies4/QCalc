#!/usr/bin/env python
# Clean up the HTML help files by making custom replacements.
#
# The first argument is the directory.

from sys import argv
from os.path import join
from glob import glob
from natu.util import replace

# Settings
STYLESHEET = '../Resources/Documentation/ModelicaDoc.css'
FAVICON = '../Resources/Documentation/favicon.ico'
DEFAULT_DIR = 'QCalc/help'

# Replacement pairs
RPLS = [
    # Use simple line endings.
    (r'\r\n', r'\n'),
    # Use lowercase tags (for consistency).
    ('<(/?)HTML>',  r'<\1html>'),
    ('<(/?)TITLE>',  r'<\1title>'),
    ('<(/?)HEAD>',  r'<\1head>'),
    ('<(/?)BODY>',  r'<\1body>'),
    ('<(/?)B>',  r'<\1b>'),
    ('<(/?)H([1-9]+)>', r'<\1h\2>'),
    ('<A +HREF *= *', '<a href='),
    ('<A +NAME *= *', '<a name='),
    ('</A>', '</a>'),
    ('<HR>', '<hr>'),
    ('<(/?)TABLE>', r'<\1table>'),
    ('<(/?)TD>', r'<\1td>'),
    ('<(/?)TR>', r'<\1tr>'),
    ('<(/?)P>', r'<\1p>'),
    ('<(/?)PRE>', r'<\1pre>'),
    ('<IMG +SRC *= *',  '<img src='),
    ('</IMG>',  '</img>'),
    ('<META +name', '<meta name'),
    ('<(/?)TH *>', r'<\1th>'), # Dymola adds a space.
    ('<TABLE +', '<table '),
    (' +BORDER *= *', ' border='),
    (' +CELLSPACING *= *', ' cellspacing='),
    (' +CELLPADDING *= *', ' cellpadding='),
    (' +ALT *= *', ' alt='),
    (' +WIDTH *= *', ' width='),
    (r'( +width=\d) >', r'\1>'),
    (' +HEIGHT *= *', ' height='),
    (' +ALIGN *= *TOP *', ' align=top'), # Dymola adds spaces.
    (' +ALIGN *= *', ' align='), # Dymola adds spaces.
    # Remove strange line breaks.
    ('"\n>', '">'),
    # No space before newline
    (' *\n', '\n'),
    # Remove extra line spacing.
    (r' *<br> *(<br>)+ *', r'<br><br>'),
    # Remove empty groups.
    ('<p>\n*</p>', ''),
    ('<pre>\n*</pre>', ''),
    (r'<pre>&quot;', r'&quot;'),
    (r'&quot;</pre>', r'&quot;'),
    # Remove the per-file license summary
    (r"<p><b>Licensed by.*((?:(?:\n|\r\n?).*)+)ModelicaLicense2</a>.</i></p>",
     ""),
    # Package contents (plural)
    ('([>"]Package Content)([<"])',
     r'\1s\2'),
    # Change the footer.
    ("""<hr>
 *<address>
 *<a href.*>Automatically generated</a> *([^.]+)\.
 *</address>""",
     """      </div>
    </div>
  </div>
</div>
<div class="footer">
  Copyright &copy; 2009&ndash;2014, <a href="http://www.hnei.hawaii.edu/staff/kevin-davies">Kevin Davies</a>, <a href="http://www.hnei.hawaii.edu">Hawaii Natural Energy Institute</a>. Last updated %s.
</div>
""" % r'\1'),
    # Remove Dymola's tags for the Microsoft Office template.
    ('<!--.+"mso-element:field-begin".+\n.+\n.+"mso-element:field-end".+-->',
     ''),
    # Remove the (useless?) textblock tags. # 8/20/14: Doesn't seem to appear
    ('<textblock type="annotcomp" expanded="false">', ''),
    ('<textblock type="annotconnect" expanded="false">', ''),
    ('<textblock type="model" expanded="false" path=".*">', ''),
    ('</textblock>', ''),
    # Make the local links local again.
    ('<a href="QCalc.*\.html(#\w*\d+)">', r'<a href="\1">'),
    # Use relative links again.
    ('/home/kld/Documents/Modelica/QCalc/QCalc[^/]*/', '../'), # Linux
    ('/media/kld/Storage/Documents/Modelica/QCalc/QCalc[^/]*/', '../'), # Linux
    ('/home/kld/Desktop/QCalc/QCalc[^/]*/', '../'), # Linux
    ('/home/kld/\.modelica-libraries/QCalc[^/]*/', '../'), # Linux
    ('file:///D:/Documents/Modelica/QCalc/QCalc[^/]*/', '../'), # Windows
    # Remove the return from footnote links (they don't work).
    ('<a href="#ref\d+">&#8629;</a>', ''),
    # Use online links to the Modelica Standard Library.
    ('"file:////opt/dymola/Modelica/Library/Modelica.*/help/(.*)"',
     r'"http://build.openmodelica.org/Documentation/\1"'),
    ('"file:////C:/Program Files.*/Dymola.*/Modelica/Library/Modelica.*/help/(.*)"',
     r'"http://build.openmodelica.org/Documentation/\1"'),
    ('"(http://build\.openmodelica\.org/Documentation/[^"]+)_([^"]+)_([^"]+)_([^"]+)_([^"]+)_([^"]+)_([^"]+)_([^"]+)"', r'"\1.\2.\3.\4.\5.\6.\7.\8"'),
    ('"(http://build\.openmodelica\.org/Documentation/[^"]+)_([^"]+)_([^"]+)_([^"]+)"',
     r'"\1.\2.\3.\4"'),
    ('"(http://build\.openmodelica\.org/Documentation/[^"]+)_([^"]+)"',
     r'"\1.\2"'),
    ('"(http://build\.openmodelica\.org/Documentation/[^"]+)_([^"]+)"',
     r'"\1.\2"'),
    # Remove nested quotes from meta description.
    ('(<meta name="description" content=")&quot;(.*)&quot;(">)', r'\1\2\3'),
    # Don't escape the quotation marks.
    (r'\\"', '"'),
    # Change the style.
    ("""<style type="text/css"> *
 *\*.*
 *\.modelica.*
 *h4.*
 *h3.*
 *h2.*
 *address.*
 *td.*
 *th.*
 *table.*
 *</style>""",
     '<link rel="stylesheet" type="text/css" charset="utf-8" media="all" href="%s">' % STYLESHEET + '\n<link rel="shortcut icon" href="%s">' % FAVICON),
    # Try to replace the internal Modelica references with the proper HTML
    # page.
    (r'"modelica://([^"]+)\.([^"]+)\.([^"]+)\.([^"]+)\.([^"]+)\.([^"]+)\.([^"]+)"',
     r'"\1_\2_\3_\4_\5_\6.html#\1.\2.\3.\4.\5.\6.\7"'),
    (r'"modelica://([^"]+)\.([^"]+)\.([^"]+)\.([^"]+)\.([^"]+)\.([^"]+)"',
     r'"\1_\2_\3_\4_\5.html#\1.\2.\3.\4.\5.\6"'),
    (r'"modelica://([^"]+)\.([^"]+)\.([^"]+)\.([^"]+)\.([^"]+)"',
     r'"\1_\2_\3_\4.html#\1.\2.\3.\4.\5"'),
    (r'"modelica://([^"]+)\.([^"]+)\.([^"]+)\.([^"]+)"',
     r'"\1_\2_\3.html#\1.\2.\3.\4"'),
    (r'"modelica://([^"]+)\.([^"]+)\.([^"]+)"', r'"\1_\2.html#\1.\2.\3"'),
    (r'"modelica://([^"]+)\.([^"]+)"', r'"\1.html#\1.\2"'),
    (r'"modelica://([^"]+)"', r'"\1.html#\1"'),
    (r'"modelica://QCalc/', r'"../'),
    ('href="Modelica',
     'href="http://build.openmodelica.org/Documentation/Modelica'),
    # Use the ellipsis code.
    ('\.\.\.', '&hellip;'),
    # Eliminate back-to-back paragraph starts.
    ('<p> *\n? *(<p>)+', '<p>'),
    ('abcdefga', 'quantity calculus'),
    # Remove paragraph marks around headings.
    ('<p>(<h\d+>.+</h\d+>)</p>', r'\1'),
    ('<p>(<h3>Package Content</h3>)<p>', r'\1'),
    # Newline before and after headings:
    ('(<h\d+>.+</h\d+>)', r'\n\1\n'),
    # but no double blank lines:
    ('(\n *){3,}', '\n\n'),
    # Add the sidebar.
    ('<div class="body">>', """<div class="body">"""),
    ("""<body>

""",
     """<body>
<div class="sidebar">
  <div class="sidebarwrapper">
  <p align=center><a href="QCalc.html">
    <img src="../Resources/Documentation/logo.svg" alt="Logo" width=150>
  </a></p>

  <h3>Library Contents</h3>
    <ul>
    <li><a href="QCalc_UsersGuide.html"><img src="QCalc.UsersGuideS.png" alt="QCalc.UsersGuide" width="20" height="20" align="top">&nbsp;User's Guide</a></li>
    <li><a href="QCalc_Blocks.html"><img src="QCalc.BlocksS.png" alt="QCalc.Blocks" width="20" height="20" align="top">&nbsp;Blocks</a></li>
    <li><a href="QCalc_Units.html"><img src="QCalc.UnitsS.png" alt="QCalc.Units" width="20" height="20" align="top">&nbsp;Units</a></li>
    <li><a href="QCalc_Quantities.html"><img src="QCalc.QuantitiesS.png" alt="QCalc.Quantities" width="20" height="20" align="top">&nbsp;Quantities</a></li>
    </ul>
  </div>
</div>

<div class="document">
  <div class="documentwrapper">
    <div class="bodywrapper">
      <div class="body">"""),
    # Fix some file links.
    ('href="QCalc/Resources/Documentation/UsersGuide/Publications/Natural-Unit-Representation-in-Modelica-\(poster\)\.html#QCalc/Resources/Documentation/UsersGuide/Publications/Natural-Unit-Representation-in-Modelica-\(poster\)\.pdf"',
     'href="../Resources/Documentation/UsersGuide/Publications/Natural-Unit-Representation-in-Modelica-(poster).pdf"'),
    ]

# Process the arguments.
try:
    directory = argv[1]
except IndexError:
    directory = DEFAULT_DIR

# Replace the text.
fnames = glob(join(directory, '*.html'))
replace(fnames, RPLS)
