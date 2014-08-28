within ;
package QCalc "Modelica units based on quantity calculus"


extends Icons.Package;

// Units and quantities
import U = QCalc.Units;
import Q = QCalc.Quantities;






annotation (
  preferredView="info",
  Commands(executeCall=QCalc.Units.setup() "Re-initialize the units."),
  Documentation(info="<html>
    <p>QCalc is a free, open-source <a href=\"https://www.modelica.org/\">Modelica</a>
    library to represent quantities using various units, including but not
    limited to <a href=\"http://en.wikipedia.org/wiki/International_System_of_Units\">SI</a>.
    The approach is based on
    <a href=\"http://en.wikipedia.org/wiki/Quantity_calculus\">quantity calculus</a>
(hence the name \"QCalc\").</p>

<h4><a name=\"usage\">Usage:</a></h4>

<p>QCalc can be used like this:</p>

 <pre>
    import Q = QCalc.Quantities;
    import U = QCalc.Units;
    Q.Pressure p = U.atm + 50*U.Pa; </pre>

<p>Nonscalar units such as <a href=\"http://en.wikipedia.org/wiki/Celsius\">Celsius</a>
and <a href=\"http://en.wikipedia.org/wiki/Decibel\">decibel</a> are also supported.
The <code>*</code> and <code>/</code> operators are overloaded
to call the unit's transformation and its inverse, respectively.  For example, this will give a value of
<i>x</i> = 100:</p>

 <pre>
    Real x = (0*U.degC + 100*U.K)/U.degC;</pre>

<p>and this will too:</p>

 <pre>
    Real x = (10/U.dB + 10/U.dB)*U.dB;</pre>

<p>since we have multiplied the numbers by adding their logarithms.</p>

 <p>The quantities are not directly compatible with the
 <a href=\"https://github.com/modelica/Modelica\">Modelica Standard Library</a>
 (MSL) since MSL expresses quantities in
 <a href=\"http://en.wikipedia.org/wiki/International_System_of_Units\">SI</a> units.
 To convert between QCalc and MSL, create an adapter with equations like this:</p>

 <pre>
    p = p_SI*U.Pa;</pre>

<p>where <code>p</code> is pressure as a quantity (in QCalc), <code>p_SI</code> is pressure in
<a href=\"http://en.wikipedia.org//wiki/Pascal_(unit)\">pascal</a> (in MSL), and <code>U.Pa</code> is
the <a href=\"http://en.wikipedia.org//wiki/Pascal_(unit)\">pascal</a> from <a href=\"modelica://QCalc.Units\">QCalc.Units</a>.</p>

    <p>Please see the
    <a href=\"modelica://QCalc.UsersGuide.GettingStarted\">getting started page</a> for more information.
    If you wish to use the same approach with <a href=\"https://www.modelica.org/\">Modelica</a> results in
    <a href=\"https://www.python.org/\">Python</a>,
    please see <a href=\"http://kdavies4.github.io/ModelicaRes/\">ModelicaRes</a>
    and <a href=\"http://kdavies4.github.io/natu/\">natu</a>.</p>

    <p><b>Licensed by the Hawaii Natural Energy Institute under the Modelica License 2</b>
    <br>Copyright &copy; 2009&ndash;2014, 
    <a href=\"http://www.hnei.hawaii.edu/\">Hawaii Natural Energy Institute</a> and 
    <a href=\"http://www.gtrc.gatech.edu/\">Georgia Tech Research Corporation</a>.</p>

    <p><i>This Modelica package is <u>free</u> software and the use is completely
    at <u>your own risk</u>; it can be redistributed and/or modified under the
    terms of the Modelica License 2. For license conditions (including the
    disclaimer of warranty) see
    <a href=\"modelica://QCalc.UsersGuide.License\">QCalc.UsersGuide.License</a>
    or visit <a href=\"http://www.modelica.org/licenses/ModelicaLicense2\">http://www.modelica.org/licenses/ModelicaLicense2</a>.</i></p></html>"),

  version="",
  versionDate="",
  uses(Modelica(version="3.2")));

end QCalc;
