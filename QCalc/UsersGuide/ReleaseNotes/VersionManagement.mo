within QCalc.UsersGuide.ReleaseNotes;
class VersionManagement "Version management"
  extends Icons.ReleaseNotes;
  annotation (Documentation(info="<html>
<p><a href=\"modelica://QCalc\">QCalc</a> is maintained with three main branches on GitHub at
<a href=\"https://github.com/kdavies4/QCalc\">https://github.com/kdavies4/QCalc</a>:</p>


<h4><a href=\"https://github.com/kdavies4/QCalc/tree/master\">master</a></h4>

<p>This branch contains the released versions.  The version numbers have the form of Major.Minor.Patch in accordance with the
<a href=\"http://semver.org/spec/v2.0.0.html\">Semantic Versioning Specification</a>.  All of the commits on this branch
are tagged with the version number (e.g., v1.0.0).
Each tag message contains a one-line summary of the changes in the version.</p>

<p>The <code>version</code> and <code>versionDate</code>
entries of the annotation of the top-level
package (<a href=\"modelica://QCalc\">QCalc</a>) are populated appropriately, e.g.,
         <pre>  annotation(version     = \"1.0.0\",
             versionDate = \"2014-01-25 16:41:20Z\");</pre>
The name of the folder that contains the Modelica source files has
the form of \"QCalc Major.Minor.Patch\" (e.g., \"QCalc 1.0.0\").</p>

TODO Update:

<h4>develop</h4>

<p>All development work is done on this branch or its sub-branches.  This branch and its
sub-branches are typically only accessed by library developers, not by library users.
Once finished, all sub-branches are merged
back into the main develop branch (with option <code>--no-ff</code>) and eventually deleted.</p>

<p>The <code>version</code> and <code>versionDate</code>
entries of the annotation of the top-level
package (<a href=\"modelica://QCalc\">QCalc</a>) are left blank in this branch, e.g.,
         <pre>  annotation(version     = \"\",
             versionDate = \"\");</pre>
The name of the folder that contains the Modelica source files is \"QCalc\".</p>


<h4><a href=\"https://github.com/kdavies4/QCalc/tree/gh-pages\">gh-pages</a></h4>

<p>This is an orphan branch for the web page of the library, which is hosted at
<a href=\"http://kdavies4.github.io/QCalc/\">http://kdavies4.github.io/QCalc/</a>.
All of the content is built from the Modelica documentation of the library.
This branch does not contain the Modelica source files or other
distribution files.</p>

</html>"));
end VersionManagement;
