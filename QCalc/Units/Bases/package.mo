within QCalc.Units;
package Bases "Sets of base constants and units"
extends Icons.Package;

/* TODO:  Fix this:
  record Gaussian
    "<html>Base constants and units for Gaussian units (<i>k</i><sub>A</sub> = <i>k</i><sub>C</sub> = 1)</html>"
    extends Base(final c=1,final R_K=25812.8074434/299792458e-7);
    annotation ( Commands(executeCall=QCalc.Units.setup()
          "Re-initialize the units."),
          Documentation(info="<html><p>Gaussian systems of units (not CGS-Gaussian units) impose that:</p>
  <ol>
  <li>the magnetic force constant is one (<i>k</i><sub>A</sub> = 1) (&rArr; <i>R</i><sub>K</sub>/<i>c</i> = 2&pi;/&alpha;) and</li>
  <li>the electric force constant is one (<i>k</i><sub>C</sub> = 1) (&rArr; <i>R</i><sub>K</sub> <i>c</i> = 2&pi;/&alpha;).</li>
  </ol>
  <p>This implies that <i>c</i> = 1 and <i>R</i><sub>K</sub> = 2&pi;/&alpha;.</p>

<p>The Gaussian conditions are not sufficient
to fully establish the values of the base constants and units of the
<a href=\"modelica://QCalc.Units\">Units</a> package.  Gaussian units
encompass other systems of units.</p>

<p>For more information, please see the documentation for the
  <a href=\"modelica://QCalc.Units\">Units</a> package.</p></html>"));
  end Gaussian;
  */

/* TODO:  Fix these:
  record LH
    "<html>Base constants and units for Lorentz-Heaviside units (&mu;<sub>0</sub> = &epsilon;<sub>0</sub> = 1)</html>"
    extends Base(final c=1,final R_K=25812.8074434/(4*pi*299792458e-7));
    annotation ( Commands(executeCall=QCalc.Units.setup()
          "Re-initialize the units."),                                                Documentation(info="<html><p>Lorentz-Heaviside systems of units impose that:</p>
  <ol>
  <li>the magnetic constant is one (&mu;<sub>0</sub> = 1) (&rArr; <i>R</i><sub>K</sub>/<i>c</i> = 1/(2&alpha;)) and</li>
  <li>the electric constant is one (&epsilon;<sub>0</sub> = 1) (&rArr; <i>R</i><sub>K</sub>&nbsp;<i>c</i> = 1/(2&alpha;)).</li>
  </ol>
  <p>This implies that <i>c</i> = 1 and <i>R</i><sub>K</sub> = 1/(2&alpha;).</p>

<p>The Lorentz-Heaviside conditions are not sufficient
to fully establish the values of the base constants and units of the
<a href=\"modelica://QCalc.Units\">Units</a> package.  Lorentz-Heaviside units
encompass other systems of units.</p>

<p>For more information, please see the documentation for the
  <a href=\"modelica://QCalc.Units\">Units</a> package.</p></html>"));
  end LH;

  record Stoney "Base constants and units for Stoney units"
    extends Gaussian(final k_J=4*pi*299792458e-7/25812.8074434);
    annotation (Documentation(info="<html><p>Stoney units are
  <a href=\"modelica://QCalc.Units.Bases.Gaussian\">Gaussian</a> units
  (<i>k</i><sub>A</sub> = <i>k</i><sub>C</sub> = 1) which also impose that:
  <ol>
  <li>the elementary charge is one (<i>q</i> = 1) and</li>
  <li>the gravitational constant is one (although not included in the <a href=\"modelica://QCalc.Units\">Units</a> package).
  </ol></p>

<p>For more information, please see the documentation for the
  <a href=\"modelica://QCalc.Units\">Units</a> package.</p></html>"),
                                                                    Commands(
          executeCall=QCalc.Units.setup() "Re-initialize the units."));
  end Stoney;
  */


annotation (Documentation(info="<html><p>The records in this package define the basis of
  various unit systems by setting the base constants.  The dimensions of the
  quantities and units (in the <code>unit</code> attribute, see
  <a href=\"modelica://QCalc.Quantities\">Quantities</a>) are not re-adjusted, but they
  should be.  For example, if the speed of light is nondimensionalized, then
  length and time are the same dimension.  However, it is tedious to update the dimensions
  of all of the quantities, so instead
  we just set a normalized constant to one and leave the dimensions as they are.</p>

  <p>For more information, please see the documentation for the
  <a href=\"modelica://QCalc.Units\">Units</a> package.</p></html>"), Commands(
      executeCall=QCalc.Units.setup() "Re-initialize the units."));
end Bases;
