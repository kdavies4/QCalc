within QCalc.Units.Bases;
record SIKmol
  "<html>Base constants for SI with <i>k</i><sub>F</sub> and <i>R</i> normalized instead of K and mol</html>"
  extends Base(
    final R_inf=10973731.568539*2*pi,
    final c=299792458,
    final k_J=483597.870e9*2*pi,
    final R_K=25812.8074434/(2*pi),
    final k_F=1,
    final R=1,
    final k_Aprime=2*pi*R_K/c);
  annotation (Documentation(info="<html><p>The values of the un-normalized SI base units are (see
  <a href=\"modelica://QCalc/Resources/Documentation/Units/Bases/unit-systems.cdf\" dowload>Resources/unit-systems.cdf</a>):</p>
  <ul>
  <li>K &asymp; 8.61733e-5</li>
  <li>mol &asymp; 96485.3</li>
  </ul>

<p>For more information, please see the documentation for the
  <a href=\"modelica://QCalc.Units\">Units</a> package.</p></html>"), Commands(
        executeCall=QCalc.Units.setup() "Re-initialize the units."));
end SIKmol;
