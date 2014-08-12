within ;
package QCalc "Units based on quantity calculus"


extends Icons.Package;

// Units and quantities
import U = QCalc.Units;
import Q = QCalc.Quantities;





annotation (
  preferredView="info",
  Commands(executeCall=QCalc.Units.setup() "Re-initialize the units."),
  Documentation(info="<html>
    <p><a href=\"modelica://Units\">Units</a> is a free, open-source library of
    units, constants, and quantities in the <a href = \"http://www.modelica.org/\">Modelica</a>
    language.  The TODO are:</p>

    <ul>

    <li><b>TODO</b>:
    TODO.</li>
    
    </ul>
   
    
    <p>Please see the 
    <a href=\"modelica://QCalc.UsersGuide.GettingStarted\">getting started page</a> for information about using the library.</p>

    <p><b>Licensed by the Hawaii Natural Energy Institute under the Modelica License 2</b>
<br>Copyright &copy; 2009&ndash;2014, <a href=\"http://www.hnei.hawaii.edu/\">Hawaii Natural Energy Institute</a> and <a href=\"http://www.gtrc.gatech.edu/\">Georgia Tech Research Corporation</a>.</p>

    <p><i>This Modelica package is <u>free</u> software and the use is completely
    at <u>your own risk</u>; it can be redistributed and/or modified under the
    terms of the Modelica License 2. For license conditions (including the
    disclaimer of warranty) see
    <a href=\"modelica://QCalc.UsersGuide.License\">
    QCalc.UsersGuide.License</a>
    or visit <a href=\"http://www.modelica.org/licenses/ModelicaLicense2\">
    http://www.modelica.org/licenses/ModelicaLicense2</a>.</i></p></html>"),
  Icon(graphics),
  version="",
  versionDate="",
  uses(Modelica(version="3.2")));
end QCalc;
