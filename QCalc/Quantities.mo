within QCalc;
package Quantities "Types to represent physical values"

  import QCalc.Icons.TypeReal;
  extends Icons.Package;

  // TODO** doc: note that the dimensions are written such that k_F = 1 and R = 1. => charge is a number and temperature is a potential

  // Generated from QCalc/Resources/quantities.xls, 2014-8-14
  type Acceleration = TypeReal (final unit="L/T2");
  type Amount = TypeReal (final unit="N", min=0);
  type AmountReciprocal = TypeReal (final unit="1/N", min=0)
    "Reciprocal of amount";
  type Angle = TypeReal (final unit="A");
  type Angle2 = TypeReal (final unit="A2") "Solid angle";
  type Area = TypeReal (final unit="L2", min=0);
  type Capacitance = TypeReal (final unit="N2.T2/(L2.M)", min=0);
  type ConductanceElectrical = TypeReal (final unit="N2.T/(L2.M)", min=0)
    "Electrical conductance";
  type ConductivityElectrical = TypeReal (final unit="N2.T/(L3.M)", min=0)
    "Electrical conductivity";
  type Current = TypeReal (final unit="N/T");
  type CurrentAreic = TypeReal (final unit="N/(L2.T)") "Areic current";
  type Density = TypeReal (final unit="N/L3", min=0);
  type Diffusivity = TypeReal (final unit="L2/T", min=0);
  type Energy = TypeReal (final unit="L2.M/T2");
  type Fluidity = TypeReal (final unit="L.T/M", min=0);
  type Force = TypeReal (final unit="L.M/T2");
  type ForceSpecific = TypeReal (final unit="L.M/(N.T2)") "Specific force";
  type Frequency = TypeReal (final unit="A/T");
  type Illuminance = TypeReal (final unit="J.A2");
  type Inductance = TypeReal (final unit="L2.M/N2", min=0);
  type Length = TypeReal (final unit="L", min=0);
  type LengthSpecific = TypeReal (final unit="L/N", min=0) "Specific length";
  type LengthSpecificMassSpecific = TypeReal (final unit="L.M/N2", min=0)
    "Specific length times specific mass";
  type Luminance = TypeReal (final unit="J/L2");
  type LuminousEmittance = TypeReal (final unit="J.A2/L2") "Luminous emittance";
  type LuminousIntensity = TypeReal (final unit="J") "Luminous intensity";
  type MagneticDipoleMoment = TypeReal (final unit="A.L2.N/T")
    "Magnetic dipole moment";
  type MagneticFieldAux = TypeReal (final unit="A.N/(L.T)")
    "Auxiliary magnetic field";
  type MagneticFlux = TypeReal (final unit="L2.M/(A.N.T)") "Magnetic flux";
  type MagneticFluxAreic = TypeReal (final unit="M/(A.N.T)")
    "Areic magnetic flux";
  type MagneticFluxReciprocal = TypeReal (final unit="A.N.T/(L2.M)")
    "Reciprocal of magnetic flux";
  type MagneticFluxSpecific = TypeReal (final unit="L2.M/(A.N2.T)")
    "Specific magnetic flux";
  type MagnetomotiveForce = TypeReal (final unit="A.N/T") "Magnetomotive force";
  type Mass = TypeReal (final unit="M", min=0);
  type MassSpecific = TypeReal (final unit="M/N", min=0) "Specific mass";
  type MassVolumic = TypeReal (final unit="M/L3", min=0) "Volumic mass";
  type Mobility = TypeReal (final unit="N.T/M", min=0);
  type MomentumRotational = TypeReal (final unit="L2.M/(A.T)")
    "Rotational momentum";
  type Number = TypeReal (final unit="1");
  type NumberAbsolute = TypeReal (final unit="1", min=0) "Absolute number";
  type Permeability = TypeReal (final unit="L.M/(A2.N2)", min=0);
  type Permittivity = TypeReal (final unit="N2.T2/(L3.M)", min=0);
  type PermittivityReciprocal = TypeReal (final unit="L3.M/(N2.T2)", min=0)
    "Reciprocal of permittivity";
  type Potential = TypeReal (final unit="L2.M/(N.T2)");
  type PotentialAbsolute = TypeReal (final unit="L2.M/(N.T2)", min=0)
    "Absolute potential";
  type PotentialPerWavenumber = TypeReal (final unit="L3.M/(A.N.T2)")
    "Potential per wavenumber";
  type Power = TypeReal (final unit="L2.M/T3");
  type PowerArea = TypeReal (final unit="L4.M/T3") "Power times area";
  type PowerAreic = TypeReal (final unit="M/T3") "Areic power";
  type PowerAreicPerPotential4 = TypeReal (final unit="N4.T5/(L8.M3)")
    "Areic power per 4th power of potential";
  type Pressure = TypeReal (final unit="M/(L.T2)");
  type PressureAbsolute = TypeReal (final unit="M/(L.T2)", min=0)
    "Absolute pressure";
  type PressureLineic = TypeReal (final unit="M/(L2.T2)") "Lineic pressure";
  type ResistanceElectrical = TypeReal (final unit="L2.M/(N2.T)", min=0)
    "Electrical resistance";
  type ResistanceFluid = TypeReal (final unit="M/(L.N.T)", min=0)
    "Fluid resistance";
  type Resistivity = TypeReal (final unit="L.T/N", min=0);
  type SurfaceTension = TypeReal (final unit="M/T2") "Surface tension";
  type Time = TypeReal (final unit="T");
  type TimeAbsolute = TypeReal (final unit="T", min=0) "Absolute time";
  type TimeReciprocal = TypeReal (final unit="1/T") "Reciprocal of time";
  type Velocity = TypeReal (final unit="L/T");
  type Velocity2 = TypeReal (final unit="L2/T2") "Squared velocity";
  type Viscosity = TypeReal (final unit="M/(L.T)", min=0);
  type Volume = TypeReal (final unit="L3", min=0);
  type VolumeSpecific = TypeReal (final unit="L3/N") "Specific volume";
  type VolumeSpecificAbsolute = TypeReal (final unit="L3/N", min=0)
    "Absolute specific volume";
  type Wavelength = TypeReal (final unit="L/A");
  type WavelengthVelocity = TypeReal (final unit="L2/(A.T)")
    "Wavelength times velocity";
  type Wavenumber = TypeReal (final unit="A/L");
  // -------- end from QCalc/Resources/quantities.xls

  // Aliases that imply special display units
  type CapacityThermal = Amount (displayUnit="J/K") "Thermal capacity";
  type CapacityThermalSpecific = NumberAbsolute (displayUnit="J/(mol.K)")
    "Specific thermal capacity";
  type CapacityThermalVolumic = Density (displayUnit="J/(m3.K)")
    "Volumic thermal capacity";
  type ConductanceThermal = Current (displayUnit="W/K") "Thermal conductance";
  type PotentialChemical = Potential (displayUnit="J/mol") "Chemical potential";
  type ResistivityThermal = Resistivity (displayUnit="m.K/W")
    "Thermal resistivity";
  type Temperature = Potential (displayUnit="K");
  type TemperatureAbsolute = PotentialAbsolute (displayUnit="degC")
    "Absolute temperature";

  annotation (Documentation(info="<html><p>This package contains quantities (<code>Real</code> types)
  that are instantiated
  to represent physical values (<code>Real</code> variables).  The
<code>unit</code> attribute of each quantity is used to denote the
  physical dimensionality in terms of fundamental dimensions:
  angle (A), length (L), mass (M), chemical amount (N), and time (T).<sup><a href=\"#fn1\" id=\"ref1\">1</a></sup>  
  The fundamental dimensions
  are combined according to the rules established for unit strings
  [<a href=\"modelica://QCalc.UsersGuide.References.Modelica2010\">Modelica2010</a>, p.&nbsp;210].  
  The abbreviations (A, L, M, N, T) are applied in alphabetical order in each numerator and denominator.  
  Temperature and charge are derived dimensions
  (see the <a href=\"modelica://QCalc.Units\">Units</a> package).
  The <code>quantity</code> attribute of each quantity is not used since it is redundant in this context.
  The <code>displayUnit</code> attribute is
  only used for quantities that imply a certain display unit.  For example, 
  <a href=\"modelica://QCalc.Quantities.Temperature\">Temperature</a> is an alias for
<a href=\"modelica://QCalc.Quantities.Potential\">Potential</a> with a default
display unit of K.  Some quantities have minimum values
(e.g., <code>min=0</code> for <a href=\"modelica://QCalc.Quantities.PressureAbsolute\">PressureAbsolute</a>).</p>

  <p>This  package (<a href=\"modelica://QCalc.Quantities\">Quantities</a>) is abbreviated as <code>Q</code> throughout
  the rest of <a href=\"modelica://QCalc.Units\">Units</a>.
Most quantities are named with adjectives following the noun so that related
  quantities are grouped when alphabetized.</p>

  <p>Methods for unit checking
  have been established [<a href=\"modelica://QCalc.UsersGuide.References.Mattsson2008\">Mattsson2008</a>,
  <a href=\"modelica://QCalc.UsersGuide.References.Broman2008\">Broman2008</a>,
  <a href=\"modelica://QCalc.UsersGuide.References.Aronsson2009\">Aronsson2009</a>] and can, in theory, be applied to
  dimension checking instead.</p>

<p>For more information, please see the
  documentation of the <a href=\"modelica://QCalc.Units\">Units</a> package.</p>

    <hr>

    <p id=\"fn1\"><small>1. This misnomer (unit instead of dimension) is necessary because <code>Real</code> 
    variables do not have a <code>dimension</code>
    attribute in Modelica.<a href=\"#ref1\" title=\"Jump back to footnote 1 in the text.\">&#8629;</a></small></p>

  <p><b>Licensed by the Hawaii Natural Energy Institute under the Modelica License 2</b><br>
Copyright &copy; 2007&ndash;2014, <a href=\"http://www.hnei.hawaii.edu/\">Hawaii Natural Energy Institute</a> and <a href=\"http://www.gtrc.gatech.edu/\">Georgia Tech Research Corporation</a>.</p>

<p><i>This Modelica package is <u>free</u> software and the use is completely at <u>your own risk</u>;
it can be redistributed and/or modified under the terms of the Modelica License 2. For license conditions (including the
disclaimer of warranty) see <a href=\"modelica://QCalc.UsersGuide.License\">
QCalc.UsersGuide.License</a> or visit <a href=\"http://www.modelica.org/licenses/ModelicaLicense2\">
http://www.modelica.org/licenses/ModelicaLicense2</a>.</i></p>
</html>"));
end Quantities;
