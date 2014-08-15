within QCalc;
package UsersGuide "User's Guide"
  extends Icons.Information;

  class GettingStarted "Getting started"
    extends Icons.Information;
    annotation (preferredView="info", Documentation(info="<html>
      TODO show example of conversion to MSL/SI
      TODO list units and constants that involve angle
  
    <p>These are the suggested steps to begin using QCalc:</p>
    <ol>
        <li>Read the <a href=\"modelica://Units\">top-level documentation</a>.</li>

        <li>Browse the subpackages of QCalc.  The high-level models are at the top and basic classes are at the bottom.</li>

        <li>Call <a href=\"modelica://QCalc.Units.setup\">QCalc.Units.setup</a>() to
        establish the display units.  This is automatic if Units
        is loaded via the <a href=\"modelica://QCalc/../load.mos\">load.mos</a> script.</li>

        <li>Read the documentation of the classes. In particular, these may be of interest:
        <ul>
            <li><a href=\"modelica://QCalc.Units\">QCalc.Units</a> package:
            Introduction to the system of units, which is different
            than <a href=\"modelica://Modelica.SIunits\">Modelica.SIunits</a></li>
        </ul>
        In general, overviews are given in the documentation of containing packages and
        detailed information is given at the appropriate level of inheritance.  If a class does not
        have sufficient documentation, please look at its base class(es) and the package(s) that
        contain it.  Assumptions are only listed at the lowest level of inheritance at which they apply.  Therefore, the
        list of assumptions in a model should be considered in conjunction with the assumptions in all
        the models it inherits from.</li>

        <li>Please share your additions or modifications so that the library
        can be improved and others may benefit.  The best way is to create a fork from the
        development page at <a href=\"https://github.com/kdavies4/Units\">https://github.com/kdavies4/Units</a>.</li>
    </ol>
    </html>"));
  end GettingStarted;

  package Glossary "Glossary"
    extends Icons.Information;

    class 'fluidity'
      "<html>(<i>noun</i>) reciprocal of dynamic viscosity [L&nbsp;T&nbsp;M<sup>-1</sup>]</html>"

      annotation (preferredView="info", DocumentationClass=false);
    end 'fluidity';

    class 'lineic'
      "<html>adjective that indicates the quotient of the following quantity and its associated length [&times;&nbsp;L<sup>-1</sup>]</html>"

      annotation (preferredView="info", DocumentationClass=false);
    end 'lineic';

    class 'massic'
      "<html>adjective that indicates the quotient of the following quantity and its associated mass [&times;&nbsp;M<sup>-1</sup>]</html>"

      annotation (preferredView="info", DocumentationClass=false);
    end 'massic';

    class 'material' "<html>1. (<i>noun</i>) particles, atoms, or molecules (i.e., matter)<br>
2. (<i>adj</i>) of particles, atoms, or molecules</html>"

      annotation (preferredView="info", DocumentationClass=false);
    end 'material';

    class 'specific'
      "<html>adjective that indicates the quotient of the following quantity and its associated <a href=\"modelica://QCalc.UsersGuide.Glossary.'chemical amount'\">chemical amount</a> [&times;&nbsp;N<sup>-1</sup>]</html>"

      annotation (
        preferredView="info",
        DocumentationClass=false,
        Documentation(info="<html><p>Note that this is not synonymous with <a href=\"modelica://QCalc.UsersGuide.Glossary.'massic'\">massic</a>;
    it does not indicate the quotient of a quantity and its associated mass. 
    </p></html>"));
    end 'specific';

    class 'volumic'
      "<html>adjective that indicates the quotient of the following quantity and its associated volume [&times;&nbsp;L<sup>-3</sup>]</html>"

      annotation (
        preferredView="info",
        DocumentationClass=false,
        Documentation(info=
              "<html><p>Example: volumic mass [M L<sup>-3</sup>]</p></html>"));

    end 'volumic';

    annotation (preferredView="info", Documentation(info="<html><p>Some of the terms below are
  unique to Units (e.g.,
  <a href=\"modelica://QCalc.UsersGuide.Glossary.'thermal independity'\">thermal independity</a> and
  <a href=\"modelica://QCalc.UsersGuide.Glossary.'translational Nusselt number'\">translational Nusselt number</a>) or are have
  nontraditional definitions (e.g.,
  <a href=\"modelica://QCalc.UsersGuide.Glossary.'configuration'\">configuration</a>,
  <a href=\"modelica://QCalc.UsersGuide.Glossary.'material'\">material</a>, and
  <a href=\"modelica://QCalc.UsersGuide.Glossary.'specific'\">specific</a>).</p></html>"));
  end Glossary;

  package Publications "Publications"
    extends Icons.References;

    class Davies2012
      "<html>K. L. Davies and C. J. Paredis, \"<a href=\"http://www.ep.liu.se/ecp_article/index.en.aspx?issue=076;article=082\">Natural Unit Representation in Modelica</a>,\" in <i>Proc. 9th Modelica Conf.</i> (Munich, Germany), Modelica Assoc., Sep. 2012 (<a href=\"modelica://QCalc/Resources/Documentation/UsersGuide/Publications/Natural%20Unit%20Representation%20in%20Modelica%20(poster).pdf\">poster</a>).</html>"

      annotation (preferredView="info", DocumentationClass=false);
    end Davies2012;
    annotation (preferredView="info", Documentation(info="<html>


    <p>The publications listed below describe the development of this library (Units).</p>

    </html>"));
  end Publications;

  package References "References"
    extends Icons.References;

    class Aronsson2009
      "<html>P. Aronsson and D. Broman, \"<a href=\"http://www.ep.liu.se/ecp_article/index.en.aspx?issue=043;article=105\">Extendable Physical Unit Checking with Understandable Error Reporting</a>,\"  in <i>Proc. 7th Modelica Conf.</i> (Como, Italy), Modelica Assoc., Sep. 2009.</html>"

      annotation (preferredView="info", DocumentationClass=false);
    end Aronsson2009;

    class BIPM2006
      "<html>International Bureau of Weights and Measures (BIPM), \"<a href=\"http://www.bipm.org/utils/common/pdf/si_brochure_8_en.pdf\">The International System of Units (SI)</a>,\" 8th ed., 2006.</html>"

      annotation (preferredView="info", DocumentationClass=false);
    end BIPM2006;

    class Broman2008
      "<html>D. Broman and P. Aronsson and P. Fritzson, \"<a href=\"http://dx.doi.org/10.1149/1.2221251\">Design Considerations for Dimensional Inference and Unit Consistency Checking in Modelica</a>,\"  in <i>Proc. 6th Modelica Conf.</i> (Bielefeld, Germany), Modelica Assoc., Mar. 2008.</html>"

      annotation (preferredView="info", DocumentationClass=false);
    end Broman2008;

    class Brown2011
      "<html>W. M. Brown, P. Wang, S. J. Plimpton, and A. N. Tharrington, \"<a href=\"http://dx.doi.org/10.1016/j.cpc.2010.12.021\">Implementing Molecular Dynamics on Hybrid High Performance Computers&mdash;Short Range Forces</a>,\" <i>Comput. Phys. Commun.</i>, vol.&nbsp;182, no.&nbsp;4, pp.&nbsp;898&ndash;911, 2011.</html>"

      annotation (preferredView="info", DocumentationClass=false);
    end Brown2011;

    class Fritzson2004
      "<html>P. Fritzson, <i>Principles of Object-Oriented Modeling and Simulation with Modelica 2.1</i>, IEEE Press (Piscataway, NJ), 2004.</html>"

      annotation (preferredView="info", DocumentationClass=false);
    end Fritzson2004;

    class Hess2008
      "<html>B. Hess, C. Kutzner, D. van der Spoel, and E. Lindahl, \"GROMACS 4: Algorithms for Highly Efficient, Load-Balanced, and Scalable Molecular Simulation,\" <i>J. Chem. Theory Comput.</i>, vol.&nbsp;4, no.&nbsp;3, pp.&nbsp;435&ndash;447, 2008.</html>"

      annotation (preferredView="info", DocumentationClass=false);
    end Hess2008;

    class Mattsson2008
      "<html>S. E. Mattsson and H. Elmqvist, \"Unit Checking and Quantity Conservation,\" in <i>Proc. 6th Modelica Conf.</i> (Bielefeld, Germany), Modelica Assoc., Mar. 2008.</html>"

      annotation (preferredView="info", DocumentationClass=false);
    end Mattsson2008;

    class Modelica2010
      "<html>Modelica Association, <a href=\"https://www.modelica.org/documents/ModelicaSpec32.pdf\"><i>Modelica: A Unified Object-Oriented Language for Physical Systems Modeling: Language Specification</i></a>, ver. 3.2, Mar. 2010.</html>"

      annotation (preferredView="info", DocumentationClass=false);
    end Modelica2010;

    class NIST2010
      "<html>National Institute of Standards and Technology (NIST), \"Fundamental Physical Constants: Complete Listing,\" <a href=\"http://physics.nist.gov/cuu/Constants/Table/allascii.txt\">http://physics.nist.gov/cuu/Constants/Table/allascii.txt</a>, 2010.</html>"

      annotation (preferredView="info", DocumentationClass=false);
    end NIST2010;
    annotation (preferredView="info", Documentation(info="<html>
    <p>The references listed below are cited throughout the Units library.</p>
    </html>"));
  end References;

  package ReleaseNotes "Release notes"
    extends Icons.ReleaseNotes;

    // TODO: Update the documentation and add entries once version number > 1.0.0.

    class VersionManagement "Version management"
      extends Icons.ReleaseNotes;
      annotation (Documentation(info="<html>
<p>
The Units library is maintained with three main branches on the GitHub server at 
<a href=\"https://github.com/kdavies4/Units\">https://github.com/kdavies4/Units</a>:
</p>


<h4><a href=\"https://github.com/kdavies4/QCalc/tree/master\">master</a></h4>

<p>
This branch contains the released versions.  The version numbers have the form of Major.Minor.Patch in accordance with the
<a href=\"http://semver.org/spec/v2.0.0.html\">Semantic Versioning Specification</a>.  All of the commits on this branch 
are tagged with the version number (e.g., v1.0.0).
Each tag message contains a one-line summary of the changes in the version.
</p>

<p>
The <code>version</code> and <code>versionDate</code> 
entries of the annotation of the top-level 
package (<a href=\"modelica://Units\">Units</a>) are populated appropriately, e.g., 
         <pre>  annotation(version     = \"1.0.0\",
             versionDate = \"2014-01-25 16:41:20Z\");</pre>
The name of the folder that contains the Modelica source files has 
the form of \"Units Major.Minor.Patch\" (e.g., \"Units 1.0.0\").
</p>

TODO:

<h4><a href=\"https://github.com/kdavies4/QCalc/tree/develop\">develop</a></h4>

<p>
All development work is done on this branch or its sub-branches.  This branch and its
sub-branches are typically only accessed by library developers, not by library users. 
Once finished, all sub-branches are merged 
back into the main develop branch (with option <code>--no-ff</code>) and eventually deleted.
</p>

<p>
The <code>version</code> and <code>versionDate</code> 
entries of the annotation of the top-level 
package (<a href=\"modelica://Units\">Units</a>) are left blank in this branch, e.g., 
         <pre>  annotation(version     = \"\",
             versionDate = \"\");</pre>
The name of the folder that contains the Modelica source files is \"Units\".
</p>


<h4><a href=\"https://github.com/kdavies4/QCalc/tree/gh-pages\">gh-pages</a></h4>

<p>
This is an orphan branch for the web page of the library, which is hosted at
<a href=\"http://kdavies4.github.io/QCalc/\">http://kdavies4.github.io/QCalc/</a>.  
All of the content is built from the Modelica documentation of the library.
This branch does not contain the Modelica source files or other
distribution files.
</p>

</html>"));
    end VersionManagement;
    annotation (Documentation(info="<html>

<p>
After version 1.0.0, the changes in each release of this library (Units) will be
summarized in subsections below.  Until then, please see the 
<a href=\"https://github.com/kdavies4/QCalc/commits/master\">commit log of the master branch</a>.
The 
<a href=\"modelica://QCalc.UsersGuide.ReleaseNotes.VersionManagement\">version management subsection</a>
describes how the library is developed and maintained using the 
<a href=\"http://git-scm.com/\">git version control system</a>.
</p>

</html>"));
  end ReleaseNotes;

  class Contact "Contact"
    extends Icons.Contact;
    annotation (preferredView="info", Documentation(info="<html>
    <p>Updates to Units may be available online at the
    <a href=\"http://kdavies4.github.io/QCalc/\">main project site</a> or the
    <a href=\"https://modelica.org/libraries\">Modelica libraries page</a>.
    The development page is
    <a href=\"https://github.com/kdavies4/Units\">https://github.com/kdavies4/Units</a>.
    Please report any problems using the <a href=\"https://github.com/kdavies4/QCalc/issues\">issues</a>
    link on that page.</p>

    <dl><dt><b>Author:</b><br></dt>
    <dd>Kevin Davies</dd>
    <dd><a href=\"http://www.hnei.hawaii.edu\">Hawai&#699;i Natural Energy Institute</a></dd>
    <dd><a href=\"http://www.soest.hawaii.edu/\">School of Ocean and Earth Science and Technology</a></dd>
    <dd><a href=\"http://manoa.hawaii.edu/\">University of Hawai&#699;i at Ma&#772;noa</a></dd>
    <dd>1680 East-West Road, POST 109</dd>
    <dd>Honolulu, HI  96822</dd>
    <dd>USA</dd>
    <dd>email: <a href=\"mailto:kdavies@hawaii.edu?Subject=Units\">kdavies@hawaii.edu</a></dd></dl>

 <!--
<p><b>Acknowledgments:</b></p><ul>

    <li>Technical discussions and insight from</li>

    <li>Code contributions and bug fixes from</li>

    <li>Testing by and feedback from</li>

</ul> -->
</html>"));
  end Contact;

  class License "License"
    extends Icons.Information;
    annotation (preferredView="info", Documentation(info="<html>
<p>All files in this directory (Units) and all subdirectories are licensed by
the <a href=\"http://www.hnei.hawaii.edu/\">Hawaii Natural Energy Institute</a> under the

<a href=\"#ModelicaLicense2\">Modelica License 2</a>

with the additional condition:</p><ul>
  <li>This software is controlled under the jurisdiction of the United States
      Department of Commerce and subject to Export Administration Regulations.
      By downloading or using the Software, you are agreeing to comply with
      U. S. export controls.  Diversion contrary to law is prohibited.  The
      software cannot be exported or reexported to sanctioned countries that
      are controlled for Anti-Terrorism (15 CFR Part 738 Supplement 1) or to
      denied parties, <a
      href=\"http://www.bis.doc.gov/index.php/policy-guidance/lists-of-parties-of-concern\">
      http://www.bis.doc.gov/index.php/policy-guidance/lists-of-parties-of-concern</a>.
      EAR99 items cannot be exported or reexported to Iraq for a military
      purpose or to a military end-user (15 CFR Part 746.3).  Export and
      reexport include any release of technology to a foreign national within
      the United States.  Technology is released for export when it is
      available to foreign nationals for visual inspection, when technology is
      exchanged orally or when technology is made available by practice or
      application under the guidance of persons with knowledge of the
      technology.</li></ul>

<p><b>Copyright &copy; 2009&ndash;2014, Hawaii Natural Energy Institute and Georgia Tech Research Corporation</b></p>

<hr>

<h4><font color=\"green\" size=4><a name=\"ModelicaLicense2\">The Modelica License 2</a></font></h4>

<p><b>Preamble.</b> The goal of this license is that Modelica related
model libraries, software, images, documents, data files etc. can be
used freely in the original or a modified form, in open source and in
commercial environments (as long as the license conditions below are
fulfilled, in particular sections 2c) and 2d). The Original Work is
provided free of charge and the use is completely at your own risk.
Developers of free Modelica packages are encouraged to utilize this
license for their work.</p>

<p>The Modelica License applies to any Original Work that contains the
following licensing notice adjacent to the copyright notice(s) for
this Original Work:</p>

<p><b>Licensed by the <a href=\"http://www.hnei.hawaii.edu/\">Hawaii Natural Energy Institute</a> under the Modelica License 2</b></p>

<p><b>1. Definitions.</b></p>
<ol type=\"a\">
        <li>&ldquo;License&rdquo; is this Modelica License.</li>

        <li>&ldquo;Original Work&rdquo; is any work of authorship, including
        software, images, documents, data files, that contains the above
        licensing notice or that is packed together with a licensing notice
        referencing it.</li>

        <li>&ldquo;Licensor&rdquo; is the provider of the Original Work who has
        placed this licensing notice adjacent to the copyright notice(s) for
        the Original Work. The Original Work is either directly provided by
        the owner of the Original Work, or by a licensee of the owner.</li>

        <li>&ldquo;Derivative Work&rdquo; is any modification of the Original
        Work which represents, as a whole, an original work of authorship.
        For the matter of clarity and as examples:

        <ol type=\"A\">
                <li>Derivative Work shall not include work that remains separable from
                the Original Work, as well as merely extracting a part of the
                Original Work without modifying it.</li>

                <li>Derivative Work shall not include (a) fixing of errors and/or (b)
                adding vendor-specific Modelica annotations and/or (c) using a
                subset of the classes of a Modelica package, and/or (d) using a
                different representation, e.g., a binary representation.</li>

                <li>Derivative Work shall include classes that are copied from the
                Original Work where declarations, equations or the documentation
                are modified.</li>

                <li>Derivative Work shall include executables to simulate the models
                that are generated by a Modelica translator based on the Original
                Work (of a Modelica package).</li>
        </ol>

        <li>&ldquo;Modified Work&rdquo; is any modification of the Original Work
        with the following exceptions: (a) fixing of errors and/or (b)
        adding vendor-specific Modelica annotations and/or (c) using a
        subset of the classes of a Modelica package, and/or (d) using a
        different representation, e.g., a binary representation.</li>

        <li>&quot;Source Code&quot; means the preferred form of the Original
        Work for making modifications to it and all available documentation
        describing how to modify the Original Work.</li>

        <li>&ldquo;You&rdquo; means an individual or a legal entity exercising
        rights under, and complying with all of the terms of, this License.</li>

        <li>&ldquo;Modelica package&rdquo; means any Modelica library that is
        defined with the &ldquo;<code><b>package</b>&nbsp;&lt;Name&gt;&nbsp;&hellip;&nbsp;<b>end</b>&nbsp;&lt;Name&gt;;</code>&rdquo; Modelica language element.</li>

</ol>

<p><b>2. Grant of Copyright License.</b> Licensor grants You a
worldwide, royalty-free, non-exclusive, sublicensable license, for
the duration of the copyright, to do the following:</p>

<ol type=\"a\">
        <li><p>To reproduce the Original Work in copies, either alone or as part of
        a collection.</p></li>
        <li><p>To create Derivative Works according to Section 1d) of this License.</p></li>
        <li><p>To distribute or communicate to the public copies of the <u>Original
        Work</u> or a <u>Derivative Work</u> under <u>this License</u>. No
        fee, neither as a copyright-license fee, nor as a selling fee for
        the copy as such may be charged under this License. Furthermore, a
        verbatim copy of this License must be included in any copy of the
        Original Work or a Derivative Work under this License.<br>
        For the matter of clarity, it is permitted A) to distribute or
        communicate such copies as part of a (possible commercial)
        collection where other parts are provided under different licenses
        and a license fee is charged for the other parts only and B) to
        charge for mere printing and shipping costs.</p></li>
        <li><p>To distribute or communicate to the public copies of a <u>Derivative
        Work</u>, alternatively to Section 2c), under <u>any other license</u>
        of your choice, especially also under a license for
        commercial/proprietary software, as long as You comply with Sections
        3, 4 and 8 below.<br>      For the matter of clarity, no
        restrictions regarding fees, either as to a copyright-license fee or
        as to a selling fee for the copy as such apply.</p></li>
        <li><p>To perform the Original Work publicly.</p></li>
        <li><p>To display the Original Work publicly.</p></li>
</ol>

<p><b>3. Acceptance.</b> Any use of the Original Work or a
Derivative Work, or any action according to either Section 2a) to 2f)
above constitutes Your acceptance of this License.</p>

<p><b>4. Designation of Derivative Works and of Modified Works.
</b>The identifying designation of Derivative Work and of Modified
Work must be different to the corresponding identifying designation
of the Original Work. This means especially that the (root-level)
name of a Modelica package under this license must be changed if the
package is modified (besides fixing of errors, adding vendor-specific
Modelica annotations, using a subset of the classes of a Modelica
package, or using another representation, e.g. a binary
representation).</p>

<p><b>5. Grant of Patent License.</b>
Licensor grants You a worldwide, royalty-free, non-exclusive, sublicensable license,
under patent claims owned by the Licensor or licensed to the Licensor by
the owners of the Original Work that are embodied in the Original Work
as furnished by the Licensor, for the duration of the patents,
to make, use, sell, offer for sale, have made, and import the Original Work
and Derivative Works under the conditions as given in Section 2.
For the matter of clarity, the license regarding Derivative Works covers
patent claims to the extent as they are embodied in the Original Work only.</p>

<p><b>6. Provision of Source Code.</b> Licensor agrees to provide
You with a copy of the Source Code of the Original Work but reserves
the right to decide freely on the manner of how the Original Work is
provided.<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;For the matter of clarity, Licensor might provide only a binary
representation of the Original Work. In that case, You may (a) either
reproduce the Source Code from the binary representation if this is
possible (e.g., by performing a copy of an encrypted Modelica
package, if encryption allows the copy operation) or (b) request the
Source Code from the Licensor who will provide it to You.</p>

<p><b>7. Exclusions from License Grant.</b> Neither the names of
Licensor, nor the names of any contributors to the Original Work, nor
any of their trademarks or service marks, may be used to endorse or
promote products derived from this Original Work without express
prior permission of the Licensor. Except as otherwise expressly
stated in this License and in particular in Sections 2 and 5, nothing
in this License grants any license to Licensor&rsquo;s trademarks,
copyrights, patents, trade secrets or any other intellectual
property, and no patent license is granted to make, use, sell, offer
for sale, have made, or import embodiments of any patent claims.<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;No license is granted to the trademarks of
Licensor even if such trademarks are included in the Original Work,
except as expressly stated in this License. Nothing in this License
shall be interpreted to prohibit Licensor from licensing under terms
different from this License any Original Work that Licensor otherwise
would have a right to license.</p>

<p><b>8. Attribution Rights.</b> You must retain in the Source
Code of the Original Work and of any Derivative Works that You
create, all author, copyright, patent, or trademark notices, as well
as any descriptive text identified therein as an &quot;Attribution
Notice&quot;. The same applies to the licensing notice of this
License in the Original Work. For the matter of clarity, &ldquo;author
notice&rdquo; means the notice that identifies the original
author(s).<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;You must cause the Source Code for any Derivative
Works that You create to carry a prominent Attribution Notice
reasonably calculated to inform recipients that You have modified the
Original Work.<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In case the Original Work or Derivative Work is not provided in
Source Code, the Attribution Notices shall be appropriately
displayed, e.g., in the documentation of the Derivative Work.</p>

<p><b>9. Disclaimer
of Warranty.<br><u>The Original Work is provided under this
License on an &quot;as is&quot; basis and without warranty, either
express or implied, including, without limitation, the warranties of
non-infringement, merchantability or fitness for a particular
purpose. The entire risk as to the quality of the Original Work is
with You.</u></b> This disclaimer of warranty constitutes an
essential part of this License. No license to the Original Work is
granted by this License except under this disclaimer.</p>

<p><b>10. Limitation of Liability.</b> Under no circumstances and
under no legal theory, whether in tort (including negligence),
contract, or otherwise, shall the Licensor, the owner or a licensee
of the Original Work be liable to anyone for any direct, indirect,
general, special, incidental, or consequential damages of any
character arising as a result of this License or the use of the
Original Work including, without limitation, damages for loss of
goodwill, work stoppage, computer failure or malfunction, or any and
all other commercial damages or losses. This limitation of liability
shall not apply to the extent applicable law prohibits such
limitation.</p>

<p><b>11. Termination.</b> This License conditions your rights to
undertake the activities listed in Section 2 and 5, including your
right to create Derivative Works based upon the Original Work, and
doing so without observing these terms and conditions is prohibited
by copyright law and international treaty. Nothing in this License is
intended to affect copyright exceptions and limitations. This License
shall terminate immediately and You may no longer exercise any of the
rights granted to You by this License upon your failure to observe
the conditions of this license.</p>

<p><b>12. Termination for Patent Action.</b> This License shall
terminate automatically and You may no longer exercise any of the
rights granted to You by this License as of the date You commence an
action, including a cross-claim or counterclaim, against Licensor,
any owners of the Original Work or any licensee alleging that the
Original Work infringes a patent. This termination provision shall
not apply for an action alleging patent infringement through
combinations of the Original Work under combination with other
software or hardware.</p>

<p><b>13. Jurisdiction.</b> Any action or suit relating to this
License may be brought only in the courts of a jurisdiction wherein
the Licensor resides and under the laws of that jurisdiction
excluding its conflict-of-law provisions. The application of the
United Nations Convention on Contracts for the International Sale of
Goods is expressly excluded. Any use of the Original Work outside the
scope of this License or after its termination shall be subject to
the requirements and penalties of copyright or patent law in the
appropriate jurisdiction. This section shall survive the termination
of this License.</p>

<p><b>14. Attorneys&rsquo; Fees.</b> In any action to enforce the
terms of this License or seeking damages relating thereto, the
prevailing party shall be entitled to recover its costs and expenses,
including, without limitation, reasonable attorneys' fees and costs
incurred in connection with such action, including any appeal of such
action. This section shall survive the termination of this License.</p>

<p><b>15. Miscellaneous.</b></p>
<ol type=\"a\">
        <li>If any
        provision of this License is held to be unenforceable, such
        provision shall be reformed only to the extent necessary to make it
        enforceable.</li>

        <li>No verbal
        ancillary agreements have been made. Changes and additions to this
        License must appear in writing to be valid. This also applies to
        changing the clause pertaining to written form.</li>

        <li>You may use the
        Original Work in all ways not otherwise restricted or conditioned by
        this License or by law, and Licensor promises not to interfere with
        or be responsible for such uses by You.</li>
</ol>
</html>"));
  end License;
  annotation (preferredView="info", DocumentationClass=true);
end UsersGuide;
