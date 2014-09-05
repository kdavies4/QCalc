within QCalc.Units.Bases;
record Hartree "Base constants for Hartree atomic units"
  extends Base(
    final R_inf=299792458e-7*pi/25812.8074434,
    final c=1/(2*R_inf),
    final k_J=2,
    final R_K=1,
    k_Aprime=2*pi*R_K/c);
  annotation (Documentation(info="<html>
<p>Hartree units impose that:
  <ol>
  <li>the elementary charge is one (<i>e</i> = 1),</li>
  <li>the reduced Planck constant is one (<i>h</i>&nbsp;rad = 1),</li>
  <li>the electric force constant is one (<i>k</i><sub>C</sub> = 1), and</li>
  <li>the mass of an electron is one (<i>M</i><sub>e</sub> = 1).
  </ol></p>

<p>Please see the documentation for the
  <a href=\"modelica://QCalc.Units\">Units</a> package.</p></html>"), Commands(
        executeCall=QCalc.Units.setup() "Re-initialize the units."));
end Hartree;
