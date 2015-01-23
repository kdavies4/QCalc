within QCalc;
package Quantities "Types to represent physical values"

import QCalc.Quantities.Interfaces.Quantity;


extends Icons.TypesPackage;

// Generated from QCalc/Resources/quantities.xls, 2015-1-22

// -------- end from from QCalc/Resources/quantities.xlsx

// Aliases that imply special display units


annotation (Documentation(info="<html>
  <p>This package contains quantities (<code>Real</code> types)
  that are instantiated
  to represent physical values (<code>Real</code> variables).  The
<code>unit</code> attribute of each quantity is used to denote the
  physical dimensionality in terms of fundamental dimensions:
  angle (A), length (L), mass (M), amount of subtance (N), and time (T).<sup><a href=\"#fn1\" id=\"ref1\">1</a></sup>
  The fundamental dimensions
  are combined according to the rules established for unit strings
  [<a href=\"modelica://QCalc.UsersGuide.References.Modelica2010\">Modelica2010</a>, p.&nbsp;210].
  The abbreviations (A, L, M, N, T) are applied in alphabetical order in each numerator and denominator.
  Temperature and charge are considered derived dimensions as if the
  <a href=\"http://en.wikipedia.org/wiki/Faraday_constant\">Faraday constant</a>
  (<i>k</i><sub>F</sub> or 96485.3399&nbsp;C/mol) and the
  <a href=\"http://en.wikipedia.org/wiki/Gas_constant\">gas constant</a>
  (<i>R</i> or 8.314472&nbsp;J/(mol&nbsp;K)) are nondimensionalized.
  The <code>quantity</code> attribute of each quantity is not used since it is redundant in this context.
  The <code>displayUnit</code> attribute is
  only used for quantities that imply a certain display unit.  For example,
  <a href=\"modelica://QCalc.Quantities.Temperature\">Temperature</a> is an alias for
<a href=\"modelica://QCalc.Quantities.Potential\">Potential</a> with a default
display unit of K.  Some quantities have minimum values
(e.g., <code>min=0</code> for <a href=\"modelica://QCalc.Quantities.PressureAbsolute\">PressureAbsolute</a>).</p>

  <p>This  package (<a href=\"modelica://QCalc.Quantities\">Quantities</a>) is abbreviated as <code>Q</code> throughout
  the rest of <a href=\"modelica://QCalc\">QCalc</a>.
Most quantities are named with adjectives following the noun so that related
  quantities are grouped when alphabetized.</p>

  <p>Methods for unit checking
  have been established [<a href=\"modelica://QCalc.UsersGuide.References.Mattsson2008\">Mattsson2008</a>,
  <a href=\"modelica://QCalc.UsersGuide.References.Broman2008\">Broman2008</a>,
  <a href=\"modelica://QCalc.UsersGuide.References.Aronsson2009\">Aronsson2009</a>] and can, in theory, be applied to
  dimension checking instead.  However, this does not work in Dymola as of 2014, so unit checking must be turned
  off (<code>Advanced.CheckUnits = false</code>).</p>

<p>For more information, please see the
  documentation of the <a href=\"modelica://QCalc.Units\">Units</a> package.</p>

    <hr>

<p id=\"fn1\"><small>1. This misnomer (<code>unit</code> attribute for dimension) is necessary because <code>Real</code>
    variables do not have a <code>dimension</code>
    attribute in Modelica.  Beware that:<ul>
    <li><code>unit=\"L\"</code> indicates a length quantity (not a volume in litres).</li>
    <li><code>unit=\"T\"</code> indicates a time quantity (not a magnetic flux in teslas).</li>
    <li><code>unit=\"A\"</code> indicates an angle (not a current in amperes).</li>
    <li><code>unit=\"N\"</code> indicates an amount of substance (not a force in newtons).</li>
    </ul>
    <a href=\"#ref1\" title=\"Jump back to footnote 1 in the text.\">&#8629;</a></small></p>

    <p><b>Licensed by the Hawaii Natural Energy Institute under the Modelica License 2</b>
    <br>Copyright &copy; 2009&ndash;2014, 
    <a href=\"http://www.hnei.hawaii.edu/\">Hawaii Natural Energy Institute</a> and 
    <a href=\"http://www.gtrc.gatech.edu/\">Georgia Tech Research Corporation</a>.</p>

    <p><i>This Modelica package is <u>free</u> software and the use is completely
    at <u>your own risk</u>; it can be redistributed and/or modified under the
    terms of the Modelica License 2. For license conditions (including the
    disclaimer of warranty) see
    <a href=\"modelica://QCalc.UsersGuide.License\">QCalc.UsersGuide.License</a>
    or visit <a href=\"http://www.modelica.org/licenses/ModelicaLicense2\">http://www.modelica.org/licenses/ModelicaLicense2</a>.</i></p></html>"));
end Quantities;
