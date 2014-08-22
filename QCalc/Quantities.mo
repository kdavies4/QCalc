within QCalc;
package Quantities "Types to represent physical values"

  import QCalc.Quantities.Interfaces.Quantity;
  extends Icons.TypesPackage;

  // Generated from QCalc/Resources/quantities.xls, 2014-8-22
  type Acceleration = Quantity (final unit="L/T2");
  type Amount = Quantity (final unit="N", min=0);
  type AmountReciprocal = Quantity (final unit="1/N", min=0)
    "Reciprocal of amount";
  type Angle = Quantity (final unit="A");
  type Angle2 = Quantity (final unit="A2") "Solid angle";
  type Area = Quantity (final unit="L2", min=0);
  type Capacitance = Quantity (final unit="N2.T2/(L2.M)", min=0);
  type Concentration = Quantity (final unit="N/L3", min=0);
  type Conductance = Quantity (final unit="N2.T/(L2.M)", min=0);
  type Current = Quantity (final unit="N/T");
  type Diffusivity = Quantity (final unit="L2/T", min=0);
  type Energy = Quantity (final unit="L2.M/T2");
  type Force = Quantity (final unit="L.M/T2");
  type Frequency = Quantity (final unit="A/T");
  type Illuminance = Quantity (final unit="J.A2");
  type Inductance = Quantity (final unit="L2.M/N2", min=0);
  type Length = Quantity (final unit="L", min=0);
  type LengthSpecific = Quantity (final unit="L/N", min=0) "Specific length";
  type LengthSpecificMassSpecific = Quantity (final unit="L.M/N2", min=0)
    "Specific length times specific mass";
  type Luminance = Quantity (final unit="J/L2");
  type LuminousEmittance = Quantity (final unit="J.A2/L2") "Luminous emittance";
  type LuminousIntensity = Quantity (final unit="J") "Luminous intensity";
  type MagneticDipoleMoment = Quantity (final unit="A.L2.N/T")
    "Magnetic dipole moment";
  type MagneticFieldAux = Quantity (final unit="A.N/(L.T)")
    "Auxiliary magnetic field";
  type MagneticFlux = Quantity (final unit="L2.M/(A.N.T)") "Magnetic flux";
  type MagneticFluxAreic = Quantity (final unit="M/(A.N.T)")
    "Areic magnetic flux";
  type MagneticFluxReciprocal = Quantity (final unit="A.N.T/(L2.M)")
    "Reciprocal of magnetic flux";
  type MagneticFluxSpecific = Quantity (final unit="L2.M/(A.N2.T)")
    "Specific magnetic flux";
  type MagnetomotiveForce = Quantity (final unit="A.N/T") "Magnetomotive force";
  type Mass = Quantity (final unit="M", min=0);
  type MassSpecific = Quantity (final unit="M/N", min=0) "Specific mass";
  type MomentumRotational = Quantity (final unit="L2.M/(A.T)")
    "Rotational momentum";
  type Number = Quantity (final unit="1");
  type Permeability = Quantity (final unit="L.M/(A2.N2)", min=0);
  type Permittivity = Quantity (final unit="N2.T2/(L3.M)", min=0);
  type PermittivityReciprocal = Quantity (final unit="L3.M/(N2.T2)", min=0)
    "Reciprocal of permittivity";
  type Potential = Quantity (final unit="L2.M/(N.T2)");
  type PotentialPerWavenumber = Quantity (final unit="L3.M/(A.N.T2)")
    "Potential per wavenumber";
  type Power = Quantity (final unit="L2.M/T3");
  type PowerArea = Quantity (final unit="L4.M/T3") "Power times area";
  type PowerAreic = Quantity (final unit="M/T3") "Areic power";
  type PowerAreicPerPotential4 = Quantity (final unit="N4.T5/(L8.M3)")
    "Areic power per 4th power of potential";
  type Pressure = Quantity (final unit="M/(L.T2)");
  type PressureLineic = Quantity (final unit="M/(L2.T2)") "Lineic pressure";
  type Resistance = Quantity (final unit="L2.M/(N2.T)", min=0);
  type Time = Quantity (final unit="T");
  type TimeReciprocal = Quantity (final unit="1/T") "Reciprocal of time";
  type Velocity = Quantity (final unit="L/T");
  type Velocity2 = Quantity (final unit="L2/T2") "Squared velocity";
  type Viscosity = Quantity (final unit="M/(L.T)", min=0);
  type Volume = Quantity (final unit="L3", min=0);
  type Wavelength = Quantity (final unit="L/A");
  type WavelengthVelocity = Quantity (final unit="L2/(A.T)")
    "Wavelength times velocity";
  type Wavenumber = Quantity (final unit="A/L");
  // -------- end from from QCalc/Resources/quantities.xls

  // Aliases that imply special display units
  type Temperature = Potential (displayUnit="K");
  type TemperatureAbsolute = PotentialAbsolute (displayUnit="degC")
    "Absolute temperature";

  package Interfaces "Partial classes"
    extends Icons.InterfacesPackage;
    type Quantity "Icon for a Quantity (special Real type)"
      extends Real;
      annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}}), graphics={Rectangle(
              lineColor={160,160,164},
              fillColor={160,160,164},
              fillPattern=FillPattern.Solid,
              extent={{-100,-100},{100,100}},
              radius=25.0), Text(
              lineColor={255,255,255},
              extent={{-90,-50},{90,50}},
              textString="Q")}), Documentation(info="<html>
<p>This icon is designed for a <b>Real</b> type that is used as a physical quantity.</p>
</html>"));
    end Quantity;
  end Interfaces;
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
    <li><code>unit=\"L\"</code> indicates a length quantity, not a volume in litres.</li>
    <li><code>unit=\"T\"</code> indicates a time quantity, not a magnetic flux in teslas.</li>
    <li><code>unit=\"A\"</code> indicates an angle, not a current in amperes.</li>
    <li><code>unit=\"N\"</code> indicates an amount of substance, not a force in newtons.</li>
    </ul>
    <a href=\"#ref1\" title=\"Jump back to footnote 1 in the text.\">&#8629;</a></small></p>

<p><b>Licensed by the Hawaii Natural Energy Institute under the Modelica
License 2</b><br> Copyright &copy; 2009&ndash;2014, <a href=\"
http://www.hnei.hawaii.edu/\">Hawaii Natural Energy Institute</a> and <a
href=\"http://www.gtrc.gatech.edu/\">Georgia Tech Research
Corporation</a>.</p>

<p><i>This Modelica package is <u>free</u> software and the use is
completely at <u>your own risk</u>; it can be redistributed and/or
modified under the terms of the Modelica License 2. For license conditions
(including the disclaimer of warranty) see <a href=\"modelica://QCalc.UsersGuide.License\">QCalc.UsersGuide.License</a> or
visit <a href=\"http://www.modelica.org/licenses/ModelicaLicense2\">http://www.modelica.org/licenses/ModelicaLicense2</a>.</i></p>

</html>"));
end Quantities;
