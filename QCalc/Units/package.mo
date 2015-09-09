within QCalc;
package Units "Constants and units of physical measure"
extends Icons.Package;


replaceable function setup "Set up the units in Dymola"
  // import Modelica.Utilities.Streams.print;
  extends Icons.Function;

  algorithm
  // print("Establishing display units...");

  // -------------------------------------------------------------------------
  // Default display units
  // -------------------------------------------------------------------------
  // If units other than those in the displayUnit attribute of the quantities
  // in QCalc.Quantities should be used by default, then specify them here.
  // Be sure that the desired unit is included in a defineUnitConversion
  // command below.

  // Generated from QCalc/Resources/quantities.xlsx, 2014-8-14
  defineDefaultDisplayUnit("L/T2", "m/s2") "Acceleration";
  defineDefaultDisplayUnit("L/T2", "Gal") "Acceleration";
  defineDefaultDisplayUnit("N", "C") "Amount";
  defineDefaultDisplayUnit("1/N", "1/mol") "Reciprocal of amount";
  defineDefaultDisplayUnit("1/N", "1/abC") "Reciprocal of amount";
  defineDefaultDisplayUnit("1/N", "N_A/") "Reciprocal of amount";
  defineDefaultDisplayUnit("A", "deg") "Angle";
  defineDefaultDisplayUnit("A2", "sr") "Solid angle";
  defineDefaultDisplayUnit("L2", "cm2") "Area";
  defineDefaultDisplayUnit("N2.T2/(L2.M)", "uF") "Capacitance";
  defineDefaultDisplayUnit("N/L3", "M") "Concentration";
  defineDefaultDisplayUnit("N2.T/(L2.M)", "S") "Conductance";
  defineDefaultDisplayUnit("N/T", "A") "Current";
  defineDefaultDisplayUnit("L2/T", "St") "Diffusivity";
  defineDefaultDisplayUnit("L2.M/T2", "J") "Energy";
  defineDefaultDisplayUnit("L.M/T2", "N") "Force";
  defineDefaultDisplayUnit("A/T", "Hz") "Frequency";
  defineDefaultDisplayUnit("J.A2", "lm") "Illuminance";
  defineDefaultDisplayUnit("L2.M/N2", "uH") "Inductance";
  defineDefaultDisplayUnit("L2.M/N2", "abH") "Inductance";
  defineDefaultDisplayUnit("L", "cm") "Length";
  defineDefaultDisplayUnit("L/N", "m/mol") "Specific length";
  defineDefaultDisplayUnit("L.M/N2", "H/m")
    "Specific length times specific mass";
  defineDefaultDisplayUnit("J/L2", "sb") "Luminance";
  defineDefaultDisplayUnit("J.A2/L2", "lx") "Luminous emittance";
  defineDefaultDisplayUnit("J", "cd") "Luminous intensity";
  defineDefaultDisplayUnit("A.L2.N/T", "J/T") "Magnetic dipole moment";
  defineDefaultDisplayUnit("A.N/(L.T)", "AT/m") "Auxiliary magnetic field";
  defineDefaultDisplayUnit("L2.M/(A.N.T)", "Wb") "Magnetic flux";
  defineDefaultDisplayUnit("M/(A.N.T)", "T") "Areic magnetic flux";
  defineDefaultDisplayUnit("A.N.T/(L2.M)", "1/Wb")
    "Reciprocal of magnetic flux";
  defineDefaultDisplayUnit("L2.M/(A.N2.T)", "Wb/C") "Specific magnetic flux";
  defineDefaultDisplayUnit("A.N/T", "AT") "Magnetomotive force";
  defineDefaultDisplayUnit("M", "g") "Mass";
  defineDefaultDisplayUnit("M/T", "kg/s") "Rate of mass";
  defineDefaultDisplayUnit("M/N", "g/mol") "Specific mass";
  defineDefaultDisplayUnit("M/L3", "kg/m3") "Volumic mass";
  defineDefaultDisplayUnit("L2.M/(A.T)", "J/Hz") "Rotational momentum";
  defineDefaultDisplayUnit("L.M/(A2.N2)", "Wb/(AT.m)") "Permeability";
  defineDefaultDisplayUnit("N2.T2/(L3.M)", "F/m") "Permittivity";
  defineDefaultDisplayUnit("L3.M/(N2.T2)", "m/F") "Reciprocal of permittivity";
  defineDefaultDisplayUnit("L2.M/(N.T2)", "V") "Potential";
  defineDefaultDisplayUnit("L3.M/(A.N.T2)", "V.m/rad")
    "Potential per wavenumber";
  defineDefaultDisplayUnit("L2.M/T3", "W") "Power";
  defineDefaultDisplayUnit("L4.M/T3", "W.m2") "Power times area";
  defineDefaultDisplayUnit("M/T3", "W/m2") "Areic power";
  defineDefaultDisplayUnit("N4.T5/(L8.M3)", "W/(m2.K4)")
    "Areic power per 4th power of potential";
  defineDefaultDisplayUnit("M/(L.T2)", "kPa") "Pressure";
  defineDefaultDisplayUnit("L2.M/(N2.T)", "ohm") "Resistance";
  defineDefaultDisplayUnit("T", "s") "Time";
  defineDefaultDisplayUnit("1/T", "Bq") "Reciprocal of time";
  defineDefaultDisplayUnit("L/T", "cm/s") "Velocity";
  defineDefaultDisplayUnit("L2/T2", "J/g") "Squared velocity";
  defineDefaultDisplayUnit("M/(L.T)", "Pa.s") "Viscosity";
  defineDefaultDisplayUnit("L3", "cc") "Volume";
  defineDefaultDisplayUnit("L/A", "m/cyc") "Wavelength";
  defineDefaultDisplayUnit("L2/(A.T)", "m2/(cyc.s)")
    "Wavelength times velocity";
  defineDefaultDisplayUnit("A/L", "cyc/m") "Wavenumber";

  // -------------------------------------------------------------------------
  // Conversions to display quantities in units
  // -------------------------------------------------------------------------
  defineUnitConversion(
      "L/T2",
      "cm/s2",
      s^2/cm) "Acceleration";
  defineUnitConversion(
      "L/T2",
      "m/s2",
      s^2/m) "Acceleration";
  defineUnitConversion(
      "L/T2",
      "Gal",
      1/Gal) "Acceleration";
  defineUnitConversion(
      "N",
      "C",
      1/C) "Amount";
  defineUnitConversion(
      "N",
      "J/K",
      K/J) "Amount";
  defineUnitConversion(
      "N",
      "mol",
      1/mol) "Amount";
  defineUnitConversion(
      "N",
      "e",
      1/e) "Amount";
  defineUnitConversion(
      "N",
      "abC",
      1/C) "Amount";
  defineUnitConversion(
      "1/N",
      "1/C",
      C) "Reciprocal of amount";
  defineUnitConversion(
      "1/N",
      "1/mol",
      mol) "Reciprocal of amount";
  defineUnitConversion(
      "1/N",
      "1/abC",
      mol) "Reciprocal of amount";
  defineUnitConversion(
      "1/N",
      "N_A",
      1/N_A) "Reciprocal of amount";
  defineUnitConversion(
      "A",
      "deg",
      1/deg) "Angle";
  defineUnitConversion(
      "A",
      "rad",
      1/rad) "Angle";
  defineUnitConversion(
      "A",
      "cyc",
      1/cyc) "Angle";
  defineUnitConversion(
      "A",
      "arcmin",
      1/arcmin) "Angle";
  defineUnitConversion(
      "A",
      "arcsec",
      1/arcsec) "Angle";
  defineUnitConversion(
      "A2",
      "sr",
      1/sr) "Solid angle";
  defineUnitConversion(
      "A2",
      "sp",
      1/sp) "Solid angle";
  defineUnitConversion(
      "L2",
      "cm2",
      1/cm^2) "Area";
  defineUnitConversion(
      "L2",
      "m2",
      1/m^2) "Area";
  defineUnitConversion(
      "L2",
      "b",
      1/b) "Area";
  defineUnitConversion(
      "N2.T2/(L2.M)",
      "F",
      1/F) "Capacitance";
  defineUnitConversion(
      "N2.T2/(L2.M)",
      "uF",
      1/(Prefixes.u*F)) "Capacitance";
  defineUnitConversion(
      "N2.T2/(L2.M)",
      "abF",
      1/abF) "Capacitance";
  defineUnitConversion(
      "N/L3",
      "C/cc",
      cc/C) "Concentration";
  defineUnitConversion(
      "N/L3",
      "C/m3",
      m^3/C) "Concentration";
  defineUnitConversion(
      "N/L3",
      "J/(m3.K)",
      m^3*K/J) "Concentration";
  defineUnitConversion(
      "N/L3",
      "M",
      1/M) "Concentration";
  defineUnitConversion(
      "N2.T/(L2.M)",
      "S",
      1/S) "Conductance";
  defineUnitConversion(
      "N/T",
      "A",
      1/A) "Current";
  defineUnitConversion(
      "N/T",
      "kat",
      1/kat) "Current";
  defineUnitConversion(
      "N/T",
      "abA",
      1/abA) "Current";
  defineUnitConversion(
      "N/T",
      "W/K",
      K/W) "Current";
  defineUnitConversion(
      "L2/T",
      "St",
      1/St) "Diffusivity";
  defineUnitConversion(
      "L2/T",
      "m2/s",
      s/m^2) "Diffusivity";
  defineUnitConversion(
      "L2/T",
      "mm^2/s",
      s/mm^2) "Diffusivity";
  defineUnitConversion(
      "L2.M/T2",
      "J",
      1/J) "Energy";
  defineUnitConversion(
      "L2.M/T2",
      "Ry",
      1/Ry) "Energy";
  defineUnitConversion(
      "L2.M/T2",
      "Ha",
      1/Ha) "Energy";
  defineUnitConversion(
      "L2.M/T2",
      "erg",
      1/erg) "Energy";
  defineUnitConversion(
      "L2.M/T2",
      "Wh",
      1/Wh) "Energy";
  defineUnitConversion(
      "L2.M/T2",
      "eV",
      1/eV) "Energy";
  defineUnitConversion(
      "L.M/T2",
      "N",
      1/N) "Force";
  defineUnitConversion(
      "L.M/T2",
      "dyn",
      1/dyn) "Force";
  defineUnitConversion(
      "A/T",
      "Hz",
      1/Hz) "Frequency";
  defineUnitConversion(
      "A/T",
      "rad/s",
      s/rad) "Frequency";
  defineUnitConversion(
      "A/T",
      "rpm",
      1/rpm) "Frequency";
  defineUnitConversion(
      "J.A2",
      "lm",
      1/lm) "Illuminance";
  defineUnitConversion(
      "J.A2",
      "ph",
      1/ph) "Illuminance";
  defineUnitConversion(
      "L2.M/N2",
      "H",
      1/H) "Inductance";
  defineUnitConversion(
      "L2.M/N2",
      "uH",
      1/(Prefixes.u*H)) "Inductance";
  defineUnitConversion(
      "L2.M/N2",
      "abH",
      1/abH) "Inductance";
  defineUnitConversion(
      "L",
      "cm",
      1/cm) "Length";
  defineUnitConversion(
      "L",
      "m",
      1/m) "Length";
  defineUnitConversion(
      "L",
      "mm",
      1/mm) "Length";
  defineUnitConversion(
      "L",
      "angstrom",
      1/angstrom) "Length";
  defineUnitConversion(
      "L",
      "nmi",
      1/nmi) "Length";
  defineUnitConversion(
      "L",
      "a_0",
      1/a_0) "Length";
  defineUnitConversion(
      "L",
      "l_n",
      1/l_n) "Length";
  defineUnitConversion(
      "L",
      "ly",
      1/ly) "Length";
  defineUnitConversion(
      "L",
      "au",
      1/au) "Length";
  defineUnitConversion(
      "L",
      "pc",
      1/pc) "Length";
  defineUnitConversion(
      "L/N",
      "m/C",
      C/m) "Specific length";
  defineUnitConversion(
      "L/N",
      "m/mol",
      mol/m) "Specific length";
  defineUnitConversion(
      "L.M/N2",
      "H/m",
      m/H) "Specific length times specific mass";
  defineUnitConversion(
      "L.M/N2",
      "N/A2",
      A^2/N) "Specific length times specific mass";
  defineUnitConversion(
      "J/L2",
      "cd/m2",
      m^2/cd) "Luminance";
  defineUnitConversion(
      "J/L2",
      "sb",
      1/sb) "Luminance";
  defineUnitConversion(
      "J.A2/L2",
      "lx",
      1/lx) "Luminous emittance";
  defineUnitConversion(
      "J",
      "cd",
      1/cd) "Luminous intensity";
  defineUnitConversion(
      "A.L2.N/T",
      "J/T",
      T/J) "Magnetic dipole moment";
  defineUnitConversion(
      "A.L2.N/T",
      "mu_B",
      1/mu_B) "Magnetic dipole moment";
  defineUnitConversion(
      "A.N/(L.T)",
      "AT/m",
      m/AT) "Auxiliary magnetic field";
  defineUnitConversion(
      "A.N/(L.T)",
      "Oe",
      1/Oe) "Auxiliary magnetic field";
  defineUnitConversion(
      "L2.M/(A.N.T)",
      "Wb",
      1/Wb) "Magnetic flux";
  defineUnitConversion(
      "L2.M/(A.N.T)",
      "Mx",
      1/Mx) "Magnetic flux";
  defineUnitConversion(
      "L2.M/(A.N.T)",
      "pole",
      1/pole) "Magnetic flux";
  defineUnitConversion(
      "M/(A.N.T)",
      "T",
      1/T) "Areic magnetic flux";
  defineUnitConversion(
      "M/(A.N.T)",
      "Gs",
      1/Gs) "Areic magnetic flux";
  defineUnitConversion(
      "A.N.T/(L2.M)",
      "1/Wb",
      Wb) "Reciprocal of magnetic flux";
  defineUnitConversion(
      "L2.M/(A.N2.T)",
      "Wb/C",
      C/Wb) "Specific magnetic flux";
  defineUnitConversion(
      "L2.M/(A.N2.T)",
      "Mx/abC",
      abC/Mx) "Specific magnetic flux";
  defineUnitConversion(
      "A.N/T",
      "AT",
      1/AT) "Magnetomotive force";
  defineUnitConversion(
      "M",
      "g",
      1/g) "Mass";
  defineUnitConversion(
      "M",
      "kg",
      1/kg) "Mass";
  defineUnitConversion(
      "M",
      "u",
      1/u) "Mass";
  defineUnitConversion(
      "M",
      "t",
      1/t) "Mass";
  defineUnitConversion(
      "M",
      "M_e",
      1/M_e) "Mass";
  defineUnitConversion(
      "M/T",
      "kg/s",
      s/kg) "Rate of mass";
  defineUnitConversion(
      "M/T",
      "g/s",
      s/g) "Rate of mass";

  defineUnitConversion(
      "M/N",
      "g/mol",
      mol/g) "Specific mass";
  defineUnitConversion(
      "M/L3",
      "kg/m3",
      m^3/kg) "Volumic mass";
  defineUnitConversion(
      "M/L3",
      "g/cc",
      cc/g) "Volumic mass";
  defineUnitConversion(
      "L2.M/(A.T)",
      "J.s/rad",
      rad/(J*s)) "Rotational momentum";
  defineUnitConversion(
      "L2.M/(A.T)",
      "J/Hz",
      Hz/J) "Rotational momentum";
  defineUnitConversion(
      "L2.M/(A.T)",
      "h",
      1/h) "Rotational momentum";
  defineUnitConversion(
      "1",
      "'%'",
      1/'%') "Number";
  defineUnitConversion(
      "L.M/(A2.N2)",
      "H/(m.cyc2)",
      m*cyc^2/H) "Permeability";
  defineUnitConversion(
      "L.M/(A2.N2)",
      "Wb/(AT.m)",
      AT*m/Wb) "Permeability";
  defineUnitConversion(
      "L.M/(A2.N2)",
      "mu_0",
      1/mu_0) "Permeability";
  defineUnitConversion(
      "N2.T2/(L3.M)",
      "F/m",
      m/F) "Permittivity";
  defineUnitConversion(
      "N2.T2/(L3.M)",
      "epsilon_0",
      1/epsilon_0) "Permittivity";
  defineUnitConversion(
      "N2.T2/(L3.M)",
      "k_C",
      1/k_C) "Permittivity";
  defineUnitConversion(
      "L3.M/(N2.T2)",
      "m/F",
      F/m) "Reciprocal of permittivity";
  defineUnitConversion(
      "L3.M/(N2.T2)",
      "1/epsilon_0",
      epsilon_0) "Reciprocal of permittivity";
  defineUnitConversion(
      "L3.M/(N2.T2)",
      "1/k_C",
      k_C) "Reciprocal of permittivity";
  defineUnitConversion(
      "L2.M/(N.T2)",
      "J/mol",
      mol/J) "Potential";
  defineUnitConversion(
      "L2.M/(N.T2)",
      "V",
      1/V) "Potential";
  defineUnitConversion(
      "L2.M/(N.T2)",
      "abV",
      1/abV) "Potential";
  defineUnitConversion(
      "L2.M/(N.T2)",
      "K",
      1/K) "Potential";
  defineUnitConversion(
      "L3.M/(A.N.T2)",
      "K.m/rad",
      rad/(K*m)) "Potential per wavenumber";
  defineUnitConversion(
      "L3.M/(A.N.T2)",
      "V.m/rad",
      rad/(V*m)) "Potential per wavenumber";
  defineUnitConversion(
      "L2.M/T3",
      "W",
      1/W) "Power";
  defineUnitConversion(
      "L4.M/T3",
      "W.m2",
      1/(W*m^2)) "Power times area";
  defineUnitConversion(
      "M/T3",
      "W/m2",
      m^2/W) "Areic power";
  defineUnitConversion(
      "N4.T5/(L8.M3)",
      "W/(m2.K4)",
      m^2*K^4/W) "Areic power per 4th power of potential";
  defineUnitConversion(
      "N4.T5/(L8.M3)",
      "sigma",
      1/sigma) "Areic power per 4th power of potential";
  defineUnitConversion(
      "M/(L.T2)",
      "atm",
      1/atm) "Pressure";
  defineUnitConversion(
      "M/(L.T2)",
      "bar",
      1/bar) "Pressure";
  defineUnitConversion(
      "M/(L.T2)",
      "kPa",
      1/kPa) "Pressure";
  defineUnitConversion(
      "M/(L.T2)",
      "Pa",
      1/Pa) "Pressure";
  defineUnitConversion(
      "M/(L.T2)",
      "mmHg",
      1/mmHg) "Pressure";
  defineUnitConversion(
      "M/(L.T2)",
      "bar",
      1/bar) "Pressure";
  defineUnitConversion(
      "M/(L.T2)",
      "Ba",
      1/Ba) "Pressure";
  defineUnitConversion(
      "M/(L.T2)",
      "atm",
      1/atm) "Pressure";
  defineUnitConversion(
      "M/(L.T2)",
      "Torr",
      1/Torr) "Pressure";
  defineUnitConversion(
      "M/(L2.T2)",
      "Pa/m",
      m/Pa) "Lineic pressure";
  defineUnitConversion(
      "L2.M/(N2.T)",
      "ohm",
      1/ohm) "Resistance";
  defineUnitConversion(
      "L2.M/(N2.T)",
      "abohm",
      1/abohm) "Resistance";
  defineUnitConversion(
      "T",
      "d",
      1/d) "Time";
  defineUnitConversion(
      "T",
      "hr",
      1/hr) "Time";
  defineUnitConversion(
      "T",
      "us",
      1/(Prefixes.u*s)) "Time";
  defineUnitConversion(
      "T",
      "ms",
      1/(Prefixes.m*s)) "Time";
  defineUnitConversion(
      "T",
      "min",
      1/min) "Time";
  defineUnitConversion(
      "T",
      "s",
      1/s) "Time";
  defineUnitConversion(
      "T",
      "y",
      1/y) "Time";
  defineUnitConversion(
      "T",
      "t_n",
      1/t_n) "Time";
  defineUnitConversion(
      "T",
      "t_H",
      1/t_H) "Time";
  defineUnitConversion(
      "1/T",
      "1/s",
      s) "Reciprocal of time";
  defineUnitConversion(
      "1/T",
      "Bq",
      1/Bq) "Reciprocal of time";
  defineUnitConversion(
      "L/T",
      "cm/s",
      s/cm) "Velocity";
  defineUnitConversion(
      "L/T",
      "m/s",
      s/m) "Velocity";
  defineUnitConversion(
      "L/T",
      "mm/s",
      s/mm) "Velocity";
  defineUnitConversion(
      "L/T",
      "um/s",
      s/(Prefixes.u*m)) "Velocity";
  defineUnitConversion(
      "L/T",
      "c",
      1/c) "Velocity";
  defineUnitConversion(
      "L/T",
      "kn",
      1/kn) "Velocity";
  defineUnitConversion(
      "L2/T2",
      "J/g",
      g/J) "Squared velocity";
  defineUnitConversion(
      "L2/T2",
      "Sv",
      1/Sv) "Squared velocity";
  defineUnitConversion(
      "L2/T2",
      "Gy",
      1/Gy) "Squared velocity";
  defineUnitConversion(
      "M/(L.T)",
      "Pa.s",
      1/(Pa*s)) "Viscosity";
  defineUnitConversion(
      "M/(L.T)",
      "g/(cm.s)",
      cm*s/g) "Viscosity";
  defineUnitConversion(
      "L3",
      "cc",
      1/cc) "Volume";
  defineUnitConversion(
      "L3",
      "L",
      1/L) "Volume";
  defineUnitConversion(
      "L3",
      "m3",
      1/m^3) "Volume";
  defineUnitConversion(
      "L/A",
      "cm/cyc",
      cyc/cm) "Wavelength";
  defineUnitConversion(
      "L/A",
      "m/cyc",
      cyc/m) "Wavelength";
  defineUnitConversion(
      "L/A",
      "m/rad",
      rad/m) "Wavelength";
  defineUnitConversion(
      "L/A",
      "lambda_e",
      1/lambda_e) "Wavelength";
  defineUnitConversion(
      "L2/(A.T)",
      "m2/(cyc.s)",
      cyc*s/m^2) "Wavelength times velocity";
  defineUnitConversion(
      "L2/(A.T)",
      "cm2/(cyc.s)",
      cyc*s/cm^2) "Wavelength times velocity";
  defineUnitConversion(
      "L2/(A.T)",
      "kappa",
      1/kappa) "Wavelength times velocity";
  defineUnitConversion(
      "A/L",
      "cyc/m",
      m/cyc) "Wavenumber";
  defineUnitConversion(
      "A/L",
      "rad/m",
      m/rad) "Wavenumber";
  defineUnitConversion(
      "A/L",
      "cyc/(cm.s)",
      cm*s/cyc) "Wavenumber";
  // -------- end from QCalc/Resources/quantities.xlsx

  // -------------------------------------------------------------------------
  // Conversions with offsets
  // -------------------------------------------------------------------------
  defineUnitConversion(
      "L2.M/(N.T2)",
      "degC",
      1/K,
      -273.15) "Temperature in degC";
  defineUnitConversion(
      "L2.M/(N.T2)",
      "degF",
      9/(5*K),
      32 - (9/5)*273.15) "Temperature in degF";
  defineUnitConversion(
      "M/(L.T2)",
      "Pag",
      1/Pa,
      -atm/Pa) "Pressure in Pag";

  // print("Done.");
  annotation (Commands(executeCall=QCalc.Units.setup()
        "Re-initialize the units."), Documentation(info="<html><p>This function has no inputs or outputs.  It is essentially a script.
The <code>defineDefaultDisplayUnit</code> and <code>defineUnitConversion</code> functions
used here are not defined in the Modelica language (as of version 3.3) but are
recognized by Dymola.</p>

<p>For more information, please see the documentation for the
<a href=\"modelica://QCalc.Units\">Units</a> package.</p></html>"));
  end setup;

// -------------------------------------------------------------------------
// Mathematical constants
// -------------------------------------------------------------------------

final constant Q.Number pi=2*acos(0)
  "<html><a href=\"https://en.wikipedia.org/wiki/Pi\">pi</a> (<i>&pi;</i>)</html>";

// TODO:  Check all dimensions against natu.

// -------------------------------------------------------------------------
// Base physical constants
// -------------------------------------------------------------------------
replaceable constant Bases.SIKmol base constrainedby Bases.Base
  "Scalable base constants";
final constant Q.Wavenumber R_inf=base.R_inf
  "<html><a href=\"http://en.wikipedia.org/wiki/Rydberg_constant\">Rydberg constant</a> (<i>R</i><sub>&infin;</sub>)</html>";
final constant Q.Velocity c=base.c
  "<html><a href=\"http://en.wikipedia.org/wiki/Speed_of_light\">speed of light</a></html>";
// aka Planck, Stoney, or natural unit of velocity
final constant Q.MagneticFluxReciprocal k_J=base.k_J
  "<html><a href=\"http://en.wikipedia.org/wiki/Josephson_constant\">Josephson constant</a> (<i>k</i><sub>J</sub>)</html>";
final constant Q.MagneticFluxSpecific R_K=base.R_K
  "<html><a href=\"http://en.wikipedia.org/wiki/Von_Klitzing_constant\">von Klitzing constant</a> (<i>R</i><sub>K</sub>)</html>";
final constant Q.Number k_F=base.k_F
  "<html><a href=\"http://en.wikipedia.org/wiki/Faraday_constant\">Faraday constant</a> (<i>k</i><sub>F</sub>)</html>";
final constant Q.Number R=base.R
  "<html><a href=\"http://en.wikipedia.org/wiki/Gas_constant\">gas constant</a></html>";
final constant Q.LengthSpecificMassSpecific k_Aprime=base.k_Aprime
  "<html>modified Ampere constant (<i>k</i><sub>A</sub> cyc/&alpha;)</html>";

// -------------------------------------------------------------------------
// Derived physical constants
// -------------------------------------------------------------------------
// Note:  These are established by definition, but may include
// transcendental mathematical factors.

final constant Q.MagneticFlux Phi_0=1/k_J
  "<html><a href=\"http://en.wikipedia.org/wiki/Magnetic_flux_quantum\">magnetic flux quantum</a> (&Phi;<sub>0</sub>)</html>";
final constant Q.Conductance G_0=2/R_K
  "<html><a href=\"http://en.wikipedia.org/wiki/Conductance_quantum\">conductance quantum</a> (<i>G</i><sub>0</sub>)</html>";
final constant Q.Amount e=G_0*Phi_0
  "<html><a href=\"http://en.wikipedia.org/wiki/Elementary_charge\">elementary charge</a></html>";
final constant Q.MomentumRotational h=2*e*Phi_0
  "<html><a href=\"http://en.wikipedia.org/wiki/Planck_constant\">Planck constant</a></html>";
final constant Q.AmountReciprocal N_A=k_F/e
  "<html><a href=\"http://en.wikipedia.org/wiki/Avogadro_number\">Avogadro constant</a> (<i>N</i><sub>A</sub>)</html>";
final constant Q.Amount k_B=R/N_A
  "<html><a href=\"http://en.wikipedia.org/wiki/Boltzmann_constant\">Boltzmann constant</a> (<i>k</i><sub>B</sub>)</html>";
final constant Q.Angle cyc=k_Aprime*c/R_K "cycle";
// aka circle, revolution, turn (a unit--not a constant--but useful here)
final constant Q.PowerArea c_1=2*pi*h*c^2/cyc^3
  "<html><a href=\"http://physics.nist.gov/cgi-bin/cuu/Value?c11strc\">first radiation constant</a> (<i>c</i><sub>1</sub>)</html>";
// Note:  The factor of cyc is included to be explicit in angle.
final constant Q.PotentialPerWavenumber c_2=h*c/k_B
  "<html><a href=\"http://physics.nist.gov/cgi-bin/cuu/Value?c22ndrc\">second radiation constant</a> (<i>c</i><sub>2</sub>)</html>";
final constant Q.MagneticFluxReciprocal c_3_f=2.821439372122079*c/c_2
  "<html><a href=\"http://en.wikipedia.org/wiki/Wien's_displacement_law\">Wien frequency displacement constant</a> (<i>c</i><sub>3 <i>f</i></sub>)</html>";
// The Wien displacement constant can be derived by setting the derivative
// of Planck's law to zero and solving for h*f/(k_B*T) in order to find the
// frequency at maximum radiant intensity.  That procedure results in
// solving the following equation: exp(x)*(3 - x) = 3, where x is h*f/k_B.
// The number above (2.821...) is Mathematica's solution
// (QCalc/Resources/Documentation/QCalc/math-constants.cdf).
final constant Q.PotentialPerWavenumber c_3_lambda=c_2/4.965114231744276
  "<html><a href=\"http://en.wikipedia.org/wiki/Wien's_displacement_law\">Wien wavelength displacement constant</a> (<i>c</i><sub>3 &lambda;</sub>)</html>";
// See the notes for c_3_nu below.  The derivation is similar, but the
// number is the solution to exp(x)*(5 - x) = 5.  Note that the frequency
// displacement constant isn't directly related to the wavelength
// displacement constant "[b]ecause the spectrum resulting from Planck's law
// of black body radiation takes a different shape in the frequency domain
// from that of the wavelength domain."
// [http://en.wikipedia.org/wiki/Wien's_displacement_law, accessed
// 1/19/10].
final constant Q.PowerAreicPerPotential4 sigma=c_1/15*(pi/c_2)^4
  "<html><a href=\"http://en.wikipedia.org/wiki/Stefan%E2%80%93Boltzmann_constant\">Stefan-Boltzmann constant</a> (&sigma;)</html>";
// See http://en.wikipedia.org/wiki/Stefan-Boltzmann_constant.  This
// equation can be derived from Planck's law for spectral radiance:
//   B = 2*(h*f)^3/(h*cyc*c)^2/(exp(h*f/(k_B*T)) - 1).
// where the factor of cyc has been included to be explicit in angle.  The
// previous equation can be written as:
//   B*(h*cyc*c)^2/(2*((k_B*T))^3) = (h*f/(k_B*T))^3/(exp(h*f/(k_B*T)) - 1).
// The RHS is multiplied by pi due to integration over the half sphere and
// the LHS is multiplied by h/(k_B*T) due to substitution prior to
// integration [http://en.wikipedia.org/wiki/Stefan-Boltzmann_law].  Now,
// the equation is:
//   B*(h*cyc)^3*c^2/(2*(k_B*T)^4) = pi*(h*f/T)^3/(exp(h*f/(k_B*T)) - 1).
// The integral of the RHS as a function of (h*f/(k_B*T)) over the entire
// frequency domain (0 to infinity) is pi^4/15.  This results in:
//   B_tot/T^4 = 2*pi^5*k_B^4/(15*(h*cyc)^3*c^2),
// where the RHS is the Stefan-Boltzmann constant.
final constant Q.Energy Ry=h*c*R_inf
  "<html><a href=\"http://en.wikipedia.org/wiki/Rydberg_constant#Value_of_the_Rydberg_constant_and_Rydberg_unit_of_energy\">Rydberg energy</a></html>";
final constant Q.Energy Ha=2*Ry
  "<html><a href=\"http://en.wikipedia.org/wiki/Hartree\">Hartree energy</a></html>";
final constant Q.Temperature T_H=Ha/k_B
  "<html>Hartree temperature (<i>T</i><sub>H</sub>)</html>";

// -------------------------------------------------------------------------
// Mathematical relations
// -------------------------------------------------------------------------
final constant Q.Angle rad=cyc/(2*pi)
  "<html><a href=\"http://en.wikipedia.org/wiki/Rad_(unit)\">radian</a></html>";
// Note:  [BIPM2006] defines rad = 1, but this trigonometric relation is
// used instead, where the cycle (cyc) is an independent base unit.

// -------------------------------------------------------------------------
// Empirical relations
// -------------------------------------------------------------------------
constant Q.Length m=10973731.568539*cyc/R_inf
  "<html><a href=\"http://en.wikipedia.org/wiki/Metre\">metre</a></html>";
// This is the "Rydberg constant" relation [NIST2010] with the unit cycle
// explicitly included in the wavenumber.  The Rydberg constant can be
// determined by measuring the spectra of hydrogen, deuterium, and
// antiprotonic helium [http://en.wikipedia.org/wiki/Rydberg_constant].
constant Q.Time s=299792458*m/c
  "<html><a href=\"http://en.wikipedia.org/wiki/Second\">second</a></html>";
// This is the "speed of light in vacuum" relation [NIST2010].  One way that
// the speed of light can be determined is by measuring the time for
// electromagnetic waves to travel to and from spacecraft
// [https://en.wikipedia.org/wiki/Speed_of_light#Astronomical_measurements].
constant Q.MagneticFlux Wb=483597.870e9/k_J
  "<html><a href=\"http://en.wikipedia.org/wiki/Weber_(unit)\">weber</a></html>";
// This is the based on the "Josephson constant" relation [NIST2010].  The
// Josephson constant can be determined by measuring supercurrent across a
// Josephson junction [http://en.wikipedia.org/wiki/Josephson_effect].
constant Q.Conductance S=25812.8074434/(R_K*cyc)
  "<html><a href=\"http://en.wikipedia.org/wiki/Siemens_(unit)\">siemens</a></html>";
// SI unit of electrical conductance
// This is based on the "von Klitzing constant" relation [NIST2010], given
// that the siemens is the reciprocal of the ohm.  The von Klitzing constant
// can be determined by measuring the quantum hall effect
// [http://en.wikipedia.org/wiki/Quantum_Hall_effect].
constant Q.Amount mol=96485.3365*Wb*cyc*S/k_F
  "<html><a href=\"http://en.wikipedia.org/wiki/Mole_(unit)\">mole</a></html>";
// This is the "Faraday constant" relation [NIST2010].  The factor of
// Wb*cyc*S is the coulomb, which is defined below.  The Faraday constant
// can be determined by electrochemical experiments relating the charge and
// the amount of subtance involved in a reaction.
constant Q.Temperature K=8.3144621*(Wb*cyc)^2*S/(s*mol*R)
  "<html><a href=\"http://en.wikipedia.org/wiki/Kelvin\">kelvin</a></html>";
// This is the "molar gas constant" relation [NIST2010].  The factor of
// (Wb*cyc)^2*S/s is the joule, which is defined below.  The gas constant can
// be determined by measuring acoustic resonation (see
// http://nvlpubs.nist.gov/nistpubs/sp958-lide/339-343.pdf).  The gas
// constant is directly related to the Boltzmann constant through other
// constants above (see the definition of k_B below).  The Boltzmann
// constant can be determined (among other ways) by measuring thermal
// electronic noise [http://en.wikipedia.org/wiki/Johnson-Nyquist_noise].

// -------------------------------------------------------------------------
// SI units decoupled from the base constants
// -------------------------------------------------------------------------
final constant Q.LuminousIntensity cd=1
  "<html><a href=\"http://en.wikipedia.org/wiki/Candela\">candela</a></html>";

// -------------------------------------------------------------------------
// SI base units [BIPM2006, Table 1] and intermediate units
// -------------------------------------------------------------------------
// Note:  Only A and kg remain (m, s, K, mol, and cd defined above).
final constant Q.Frequency Hz=cyc/s
  "<html><a href=\"http://en.wikipedia.org/wiki/Hertz\">hertz</a></html>";
// Note:  [BIPM2006] defines Hz = 1/s, but that conflicts with the common
// definition of the hertz as "one cycle per second"
// [https://en.wikipedia.org/wiki/Hertz].  Since BIPM defines rad = 1 and
// trigonometry requires cyc = 2*pi*rad (see above), BIPM implies that
// Hz = cyc/(2*pi*s) -- an inconsistency.
final constant Q.Potential V=Wb*Hz
  "<html><a href=\"http://en.wikipedia.org/wiki/Volt\">volt</a></html>";
// Note:  [BIPM2006] defines Wb = V*s, but Wb = V/Hz is used here (which is
// different, see above) to be explicit in angle.
final constant Q.Current A=V*S
  "<html><a href=\"http://en.wikipedia.org/wiki/Ampere\">ampere</a></html>";
final constant Q.Amount C=A*s
  "<html><a href=\"http://en.wikipedia.org/wiki/Coulomb\">coulomb</a></html>";
final constant Q.Energy J=V*C
  "<html><a href=\"http://en.wikipedia.org/wiki/Joule\">joule</a></html>";
final constant Q.Velocity2 Gy=(m/s)^2
  "<html><a href=\"http://en.wikipedia.org/wiki/Gray_unit\">gray</a></html>";
final constant Q.Mass kg=J/Gy
  "<html><a href=\"http://en.wikipedia.org/wiki/Kilogram\">kilogram</a></html>";
final constant Q.Mass g=kg/Prefixes.k
  "<html><a href=\"http://en.wikipedia.org/wiki/Gram\">gram</a></html>";
// The base SI unit of mass (kg) includes a prefix.  See section 3.2 of
// [BIPM2006].

// -------------------------------------------------------------------------
// SI derived units with special names and symbols [BIPM2006, Table 3]
// -------------------------------------------------------------------------
// Note:  rad, sr, Hz, Wb, S, V, C, J, lm, and Gy have already been defined.
final constant Q.Angle2 sr=rad^2
  "<html><a href=\"http://en.wikipedia.org/wiki/Steradian\">steradian</a></html>";
// Note:  [BIPM2006] defines sr = 1, which is consistent with the common
// definition of the steradian as the square of the radian (rad)
// [https://en.wikipedia.org/wiki/Steradian] only because [BIPM2006] defines
// rad = 1.  Here, the common definition is applied directly.
final constant Q.Illuminance lm=cd*sr
  "<html><a href=\"http://en.wikipedia.org/wiki/Lumen_(unit)\">lumen</a></html>";
final constant Q.Power W=J/s
  "<html><a href=\"http://en.wikipedia.org/wiki/Watt\">watt</a></html>";
final constant Q.Force N=J/m
  "<html><a href=\"http://en.wikipedia.org/wiki/Newton_unit\">newton</a></html>";
final constant Q.Pressure Pa=N/m^2
  "<html><a href=\"http://en.wikipedia.org/wiki/Pascal_(unit)\">pascal</a></html>";
final constant Q.MagneticFluxAreic T=Wb/m^2
  "<html><a href=\"http://en.wikipedia.org/wiki/Tesla_(unit)\">tesla</a></html>";
final constant Q.LuminousEmittance lx=lm/m^2
  "<html><a href=\"http://en.wikipedia.org/wiki/Lux\">lux</a></html>";
final constant Q.Capacitance F=s*S
  "<html><a href=\"http://en.wikipedia.org/wiki/Farad\">farad</a></html>";
final constant Q.Resistance ohm=1/S
  "<html><html><a href=\"http://en.wikipedia.org/wiki/Ohm\">ohm</a> (&Omega;)</html>";
final constant Q.Inductance H=s/S
  "<html><a href=\"http://en.wikipedia.org/wiki/Henry_(unit)\">henry</a></html>";
// Note:  The definition in [BIPM2006], H = Wb/A, isn't valid here because
// angle is included explicitly in magnetic flux (i.e., Wb = V/Hz = V*s/cyc,
// not Wb = V*s).
final constant Q.Current kat=mol/s
  "<html><a href=\"http://en.wikipedia.org/wiki/Katal\">katal</a></html>";
final constant Q.Velocity2 Sv=Gy
  "<html><a href=\"http://en.wikipedia.org/wiki/Sievert\">sievert</a></html>";
final constant Q.TimeReciprocal Bq=1/s
  "<html><a href=\"http://en.wikipedia.org/wiki/Becquerel\">becquerel</a></html>";
final constant Interfaces.degC degC
  "<html><a href=\"http://en.wikipedia.org/wiki/Celsius\">degree Celsius</a> (&deg;C)</html>";

// -------------------------------------------------------------------------
// Non-SI units accepted for use with SI units [BIPM2006, Table 6]
// -------------------------------------------------------------------------
final constant Q.Time min=60*s
  "<html><a href=\"http://en.wikipedia.org/wiki/Minute\">minute</a></html>";
final constant Q.Time hr=60*min
  "<html><a href=\"http://en.wikipedia.org/wiki/Hour\">hour</a></html>";
final constant Q.Time d=24*hr
  "<html><a href=\"http://en.wikipedia.org/wiki/Day\">day</a></html>";
final constant Q.Angle deg=cyc/360
  "<html><a href=\"http://en.wikipedia.org/wiki/Degree_(angle)\">degree</a> (&deg;)</html>";
// aka degree of arc, arc degree, or arcdegree
final constant Q.Angle arcmin=deg/60
  "<html><a href=\"http://en.wikipedia.org/wiki/Arcminute\">arcminute</a> (&prime;)</html>";
// aka minute of arc or minute arc
final constant Q.Angle arcsec=arcmin/60
  "<html><a href=\"http://en.wikipedia.org/wiki/Arcsecond\">arcsecond</a> (&prime;&prime;)</html>";
// aka second of arc or second arc
final constant Q.Area ha=(Prefixes.h*m)^2
  "<html><a href=\"http://en.wikipedia.org/wiki/Hectare\">hectare</a></html>";
final constant Q.Volume L=(Prefixes.d*m)^3
  "<html><a href=\"http://en.wikipedia.org/wiki/Litre\">litre</a> (L or l)</html>";
final constant Q.Mass t=Prefixes.M*g
  "<html><a href=\"http://en.wikipedia.org/wiki/Tonne\">tonne</a></html>";

// -------------------------------------------------------------------------
// Other non-SI units [BIPM2006, Table 8]
// -------------------------------------------------------------------------
final constant Q.Acceleration g_0=9.80665*m/s^2
  "<html><a href=\"http://en.wikipedia.org/wiki/Standard_gravity\">standard gravity</a></html>";
// (a constant--not a unit)
// Not defined in [BIPM2006] but useful here
final constant Q.Length cm=Prefixes.c*m
  "<html><a href=\"http://en.wikipedia.org/wiki/Centimetre\">centimetre</a></html>";
// Not defined in [BIPM2006] but useful here
final constant Q.Volume cc=cm^3
  "<html><a href=\"http://en.wikipedia.org/wiki/Cubic_centimetre\">cubic centimetre</a></html>";
// Not defined in [BIPM2006] but useful here
final constant Q.PressureLineic Hg=13.5951*g*g_0/cc
  "<html>force per volume of <a href=\"http://en.wikipedia.org/wiki/Mercury_(element)\">mercury</a> under <a href=\"http://en.wikipedia.org/wiki/Standard_gravity\">standard gravity</a></html>";
// Not defined in [BIPM2006] but useful here
final constant Q.Length mm=Prefixes.m*m
  "<html><a href=\"https://en.wikipedia.org/wiki/Millimetre\">millimetre</a></html>";
// Not in Table 8 but useful for the definition below
final constant Q.Pressure mmHg=mm*Hg
  "<html><a href=\"http://en.wikipedia.org/wiki/Millimeter_of_mercury\">millimetre of mercury</a></html>";
final constant Q.Pressure kPa=Prefixes.k*Pa "kilopascal";
// Not defined in [BIPM2006] but useful here
final constant Q.Pressure bar=100*kPa
  "<html><a href=\"http://en.wikipedia.org/wiki/Bar_(unit)\">bar</a></html>";
final constant Q.Area b=100*(Prefixes.f*m)^2
  "<html><a href=\"http://en.wikipedia.org/wiki/Barn_(unit)\">barn</a></html>";
final constant Q.Length angstrom=1e-10*m
  "<html><html><a href=\"http://en.wikipedia.org/wiki/Angstrom\">angstrom</a> (&#8491;)</html>";
final constant Q.Length nmi=1852*m
  "<html><a href=\"http://en.wikipedia.org/wiki/Nautical_mile\">nautical mile</a></html>";
final constant Q.Velocity kn=nmi/hr
  "<html><a href=\"http://en.wikipedia.org/wiki/Knot_(unit)\">knot</a></html>";
final constant Interfaces.Np Np
  "<html><a href=\"http://en.wikipedia.org/wiki/Neper\">neper</a> (in terms of amplitude ratio, not power ratio)</a></html>";
final constant Interfaces.B B
  "bel (in terms of power ratio, not amplitude ratio)";
final constant Interfaces.dB dB
  "<html><a href=\"http://en.wikipedia.org/wiki/Decibel\">decibel</a> (in terms of power ratio, not amplitude ratio)</html>";

// -------------------------------------------------------------------------
// Non-SI units associated with the CGS and the CGS-Gaussian system of units
// [BIPM2006, Table 9]
final constant Q.Acceleration Gal=cm/s^2
  "<html><a href=\"http://en.wikipedia.org/wiki/Gal_(unit)\">gal</a></html>";
final constant Q.Force dyn=g*Gal
  "<html><a href=\"http://en.wikipedia.org/wiki/Dyne\">dyne</a></html>";
final constant Q.Energy erg=dyn*cm
  "<html><a href=\"http://en.wikipedia.org/wiki/Erg\">erg</a></html>";
final constant Q.Pressure Ba=dyn/cm^2
  "<html><a href=\"http://en.wikipedia.org/wiki/Barye\">barye</a></html>";
// aka barad, barrie, bary, baryd, baryed, or barie
// Not in [BIPM2006] but useful here
final constant Q.Viscosity P=Ba*s
  "<html><a href=\"http://en.wikipedia.org/wiki/Poise\">poise</a></html>";
final constant Q.Diffusivity St=cm^2/s
  "<html><a href=\"http://en.wikipedia.org/wiki/Stokes_(unit)\">stokes</a></html>";
// aka stoke
final constant Q.Luminance sb=cd/cm^2
  "<html><a href=\"http://en.wikipedia.org/wiki/Stilb_(unit)\">stilb</a></html>";
final constant Q.Illuminance ph=sb*sr
  "<html><a href=\"http://en.wikipedia.org/wiki/Phot\">phot</a></html>";
final constant Q.Current abA=Prefixes.da*A
  "<html><a href=\"https://en.wikipedia.org/wiki/Abampere\">abampere</a></html>";
// aka decaampere or Biot (Bi)
// Not in [BIPM2006] but useful here
final constant Q.Amount abC=abA*s
  "<html><a href=\"https://en.wikipedia.org/wiki/Abcoulomb\">abcoloumb</a></html>";
// Not in [BIPM2006] but useful here
final constant Q.Potential abV=erg/abC
  "<html><a href=\"https://en.wikipedia.org/wiki/Abvolt\">abvolt</a></html>";
// Not in [BIPM2006] but useful here
final constant Q.MagneticFlux Mx=erg/(abA*cyc)
  "<html><a href=\"http://en.wikipedia.org/wiki/Maxwell_(unit)\">maxwell</a></html>";
final constant Q.MagneticFluxAreic Gs=Mx/cm^2
  "<html><a href=\"http://en.wikipedia.org/wiki/Gauss_(unit)\">gauss</a></html>";
final constant Q.MagneticFlux pole=4*pi*Mx "unit magnetic pole";
// Not in [BIPM2006] but useful here
final constant Q.MagneticFieldAux Oe=dyn/pole
  "<html><a href=\"http://en.wikipedia.org/wiki/Oersted\">oersted</a></html>";
// Others not in [BIPM2006]:
final constant Q.Capacitance abF=abC/abV
  "<html><a href=\"https://en.wikipedia.org/wiki/Abfarad#CGS_units\">abfarad</a></html>";
final constant Q.Resistance abohm=s/abF
  "<html><a href=\"https://en.wikipedia.org/wiki/Abohm\">abohm</a></html>";
final constant Q.Inductance abH=abohm*s
  "<html><a href=\"http://en.wikipedia.org/wiki/Abhenry\">abhenry</a></html>";

// -------------------------------------------------------------------------
// Constants related to Ampere's force law
// -------------------------------------------------------------------------
constant Q.LengthSpecificMassSpecific k_A=dyn/abA^2
  "<html>Ampere constant (<i>k</i><sub>A</sub>)</html>";
constant Q.PermittivityReciprocal k_C=k_A*c^2
  "<html><a href=\"https://en.wikipedia.org/wiki/Coulomb_constant\">Coulomb constant</a> (<i>k</i><sub>C</sub>)</html>";
final constant Q.Permittivity epsilon_0=1/(k_C*(if base.rational then 4*pi
     else 1))
  "<html><a href=\"http://en.wikipedia.org/wiki/Vacuum_permittivity\">electric constant</a> (&epsilon;<sub>0</sub>)</html>";
// aka vacuum permittivity or permittivity of free space
final constant Q.Permeability mu_0=1/(epsilon_0*cyc^2*c^2)
  "<html><a href=\"http://en.wikipedia.org/wiki/Vacuum_permeability\">magnetic constant</a> (&mu;<sub>0</sub>)</html>";
// aka vacuum permeability or permeability of free space
final constant Q.Resistance Z_0=2*k_A*c/rad
  "<html><a href=\"http://en.wikipedia.org/wiki/Impedance_of_free_space\">characteristic impedance of vacuum</a> (<i>Z</i><sub>0</sub>)</html>";
final constant Q.Angle alpha=k_A*c/R_K
  "<html><a href=\"http://en.wikipedia.org/wiki/Fine_structure_constant\">fine-structure constant</a> (&alpha;)</html>";
final constant Q.Length a_0=alpha/(2*R_inf)
  "<html><a href = https://en.wikipedia.org/wiki/Bohr_radius>Bohr radius</a> (<i>a</i><sub>0</sub>)</html>";
// aka Hartree length
final constant Q.Wavelength lambda_e=alpha*a_0/sr
  "<html>electron <a href=\"https://en.wikipedia.org/wiki/Compton_wavelength\">Compton wavelength</a> (&lambda;<sub>e</sub>)</html>";
final constant Q.WavelengthVelocity kappa=lambda_e*c/2
  "<html>quantum of circulation (&kappa;)</html>";
final constant Q.MassSpecific m_e=Phi_0/kappa
  "<html><a href=\"http://en.wikipedia.org/wiki/Electron_mass\">specific electron rest mass</a> (<i>m</i><sub>e</sub>)</html>";
final constant Q.LengthSpecific r_e=k_A/m_e
  "<html><a href=\"http://en.wikipedia.org/wiki/Classical_electron_radius\">specific classical electron radius</a> (<i>r</i><sub>e</sub>)</html>";
// aka specific Lorentz radius or specific Thomson scattering length
final constant Q.MagneticDipoleMoment mu_B=kappa*e*sp/2
  "<html><a href=\"https://en.wikipedia.org/wiki/Bohr_magneton\">Bohr magneton</a></html>";
final constant Q.Mass M_e=m_e*e
  "<html>mass of an electron (<i>M</i><sub>e</sub>)</html>";
// aka Hartree mass or natural unit of mass
final constant Q.Time t_H=a_0*sqrt(M_e/Ha)
  "<html>Hartree time (<i>t</i><sub>H</sub>)</html>";
final constant Q.Length l_n=h*rad/(M_e*c)
  "<html>natural unit of length (<i>l</i><sub>n</sub>)</html>";
final constant Q.Time t_n=l_n/c
  "<html>natural unit of time (<i>t</i><sub>n</sub>)</html>";

// -------------------------------------------------------------------------
// Other
// -------------------------------------------------------------------------
final constant Q.Time y=365.25*d
  "<html><a href=\"http://en.wikipedia.org/wiki/Julian_year_(astronomy)\">Julian year</a></html>";
final constant Q.Length ly=c*y
  "<html><a href=\"http://en.wikipedia.org/wiki/Light_year\">light year</a></html>";
final constant Q.Length au=149597870700*m
  "<html><a href=\"http://en.wikipedia.org/wiki/Astronomical_unit\">astronomical unit</a></html>";
final constant Q.Length pc=au*648e3/pi
  "<html><a href=\"http://en.wikipedia.org/wiki/Parsec\">parsec</a></html>";
final constant Q.Pressure atm=101325*Pa
  "<html><a href=\"http://en.wikipedia.org/wiki/Atmosphere_(unit)\">atmosphere</a></html>";
// Value from "standard atmosphere" [NIST2010]
final constant Q.Pressure Torr=atm/760
  "<html><a href=\"http://en.wikipedia.org/wiki/Torr\">torr</a></html>";
final constant Q.Energy Wh=W*h
  "<html><a href=\"http://en.wikipedia.org/wiki/Watt_hour\">watt hour</a></html>";
final constant Q.Energy eV=e*V
  "<html><a href=\"http://en.wikipedia.org/wiki/Electron_volt\">electron volt</a></html>";
final constant Q.Angle2 sp=4*pi*sr
  "<html><a href=\"http://en.wikipedia.org/wiki/Spat_(unit)\">spat</a></html>";
final constant Q.Frequency rpm=cyc/min
  "<html><a href=\"http://en.wikipedia.org/wiki/Revolutions_per_minute\">revolution per minute</a></html>";
final constant Q.Number '%'=Prefixes.c
  "<html><a href=\"http://en.wikipedia.org/wiki/Percent\">percent</a> (%)</html>";
final constant Q.MagnetomotiveForce AT=A*cyc
  "<html><a href=\"http://en.wikipedia.org/wiki/Ampere-turn\">ampere-turn</a></html>";
final constant Q.Area D=Prefixes.c*dyn/atm
  "<html><a href=\"http://en.wikipedia.org/wiki/Darcy_(unit)\">darcy</a></html>";
final constant Q.Mass u=g/(N_A*mol)
  "<html><a href=\"https://en.wikipedia.org/wiki/Atomic_mass_unit\">unified atomic mass unit</a></html>";
// aka dalton (Da)
final constant Q.Concentration M=mol/L
  "<html><a href=\"http://en.wikipedia.org/wiki/Molar_concentration#Units\">molar</a></html>";
final constant Interfaces.kPag kPag "kilopascal, gauge";



annotation (
  Documentation(info="<html>
    <p>Below are details about the premise and the implementation of physical units in
    <a href=\"modelica://QCalc\">QCalc</a>.
    For an overview of how to use
    <a href=\"modelica://QCalc\">QCalc</a>, please
see the <a href=\"modelica://QCalc\">top-level documentation</a>
and the <a href=\"modelica://QCalc.UsersGuide.GettingStarted\">getting started page</a>.
This text has been updated and adapted from
[<a href=\"modelica://QCalc.UsersGuide.Publications.Davies2012\">Davies2012</a>].
That paper also suggests how the approach might be
better integrated in the <a href=\"http://www.modelica.org\">Modelica
language</a>.  Please also see the documentation
of the <a href=\"modelica://QCalc.Quantities\">Quantities</a> package.</p>




<p><b>Introduction:</b></p>

<p>In mathematical models, one uses variables to represent
physical quantities. As stated by the Bureau International des Poids et
Mesures (BIPM) [<a href=\"modelica://QCalc.UsersGuide.References.BIPM2006\">BIPM2006</a>,
p.&nbsp;103]:</p> <blockquote> \"The value of a quantity
is generally expressed as the product of a number and a unit.  The unit
is simply a particular example of the quantity concerned which is used as
a reference, and the number is the ratio of the value of the quantity to
the unit.\" </blockquote> <p>In general, a unit may be the product of
other units raised to various powers.</p>

<p>In <a href=\"http://www.modelica.org\">Modelica</a>, a physical
quantity is represented by a <code>Real</code> variable.
Its <code>value</code> attribute is a number
associated with the value of the quantity (not the value of the quantity
itself, as will be shown).  Usually the <code>value</code> attribute is
not explicitly referenced because it is automatically returned when the
variable itself is referenced. The <code>unit</code> attribute is a string that
describes the unit by which the value of the quantity has been divided to
arrive at the number.  The <code>displayUnit</code> attribute (also a
string) describes the unit by which the value of the quantity should be
divided to arrive at the number as it is entered by or presented to the
user.  The <code>Real</code> type contains other attributes as well,
including the <code>quantity</code> string.</p>

<p>The <a href=\"modelica://Modelica.SIunits\">SIunits</a> package of the
<a href=\"modelica://Modelica\">Modelica Standard Library</a> contains
types that extend the <code>Real</code> type.  The type definitions
modify the <code>unit</code>, <code>displayUnit</code>, and
<code>quantity</code> attributes (among others) to represent various
physical quantities.  The <code>unit</code> and <code>displayUnit</code>
attributes are based on the
<a href=\"http://en.wikipedia.org/wiki/International_System_of_Units\">International System of Units</a> (Syst&egrave;me
international d'unit&eacute;s, SI). The <code>quantity</code> string is
the name of the physical quantity.  For example, the
<a href=\"modelica://Modelica.SIunits.Velocity\">Velocity</a>  type has a
<code>unit</code> of \"m/s\" and a <code>quantity</code> of \"Velocity\".
If an instance of <a href=\"modelica://Modelica.SIunits.Velocity\">Velocity</a>
has a <code>value</code> of one (<i>v</i> = 1), then it is
meant that \"the value of velocity is one metre per second.\"  Again, the
<code>value</code> attribute represents the number, or the value of the
quantity divided by the unit, not the value of the quantity itself.</p>

<p>This conflict is solved in <a href=\"modelica://QCalc\">QCalc</a>
by establishing units as mathematical entities and writing
<i>v</i> = 1&nbsp;m/s (in code, <code>v = 1*U.m/U.s</code> or simply
<code>v = U.m/U.s</code>, where <code>U</code> is an abbreviation for this
package). Here, the variable <i>v</i> directly represents the quantity.
Its <code>value</code> attribute is truly the value of the quantity in the
context of the statement by <a href=\"http://www.bipm.org/\">BIPM</a> (above). One advantage is that unit
conversion is built in.  The essence of unit conversion is that the
phrase \"value of quantity in unit\" typically means \"value of
quantity divided by unit.\"  Continuing with the previous example,
<i>v</i> is divided by m/s in order to display <i>v</i> in metres per
second (as a number).  If another unit of length like the foot is
established by the appropriate relation (ft &asymp; 0.3048&nbsp;m) and
<i>v</i> is divided by ft/s, the result is velocity in feet per second
(&sim;3.2894).  Some units such as &deg;C, Pag, and dB involve offsets or
nonaffine transformations between the value of the quantity and the
number; these are described by functions besides simple division.</p>

<p><b>Method:</b></p>

<p>In <a href=\"modelica://QCalc\">QCalc</a>, each <a href=\"modelica://QCalc.UsersGuide.Glossary.'scalar unit'\">scalar unit</a> is a constant
quantity. The value of a unit, like other quantities, is the product
of a number and a unit. Therefore, units may be derived from other units
(e.g., Pa = N/m<sup>2</sup>). This recursive definition leaves several
units (in <a href=\"http://en.wikipedia.org/wiki/International_System_of_Units\">SI</a>, 7)
that are locally independent and must be established
universally.  These base units are established by the \"particular example
of the quantity concerned which is used as a reference\" quoted previously
[<a href=\"modelica://QCalc.UsersGuide.References.BIPM2006\">BIPM2006</a>].
The choice of the base units is somewhat arbitrary [<a
href=\"modelica://QCalc.UsersGuide.References.Fritzson2004\">Fritzson2004</a>,
p.&nbsp;375], but regardless, there are a number of
units that must be defined by example.</p>

<p>If only <a href=\"http://en.wikipedia.org/wiki/International_System_of_Units\">SI</a>
will be used, then it is easiest to set each of the base
units of <a href=\"http://en.wikipedia.org/wiki/International_System_of_Units\">SI</a>
equal to one&mdash;the
<a href=\"http://en.wikipedia.org/wiki/Metre\">metre</a> (m),
<a href=\"http://en.wikipedia.org/wiki/Kilogram\">kilogram</a> (kg),
<a href=\"http://en.wikipedia.org/wiki/Second\">second</a> (s),
<a href=\"http://en.wikipedia.org/wiki/Ampere\">ampere</a> (A),
<a href=\"http://en.wikipedia.org/wiki/Kelvin\">kelvin</a> (K),
<a href=\"http://en.wikipedia.org/wiki/Mole_(unit)\">mole</a> (mol), and
<a href=\"http://en.wikipedia.org/wiki/Candela\">candela</a> (cd).  This is implicitly
the case in the <a href=\"modelica://Modelica.SIunits\">SIunits</a>
package, but again, it hardly captures the idea that the value of a
quantity is the product of a number and a unit.</p>

<p>Instead, in <a href=\"modelica://QCalc\">QCalc</a>, the values of the base units are
established from physical constants. This approach reflects the
way that standards organizations (e.g., <a href=\"http://www.nist.gov/\">NIST</a>)
define modern units.
The \"particular example of the quantity\"
[<a href=\"modelica://QCalc.UsersGuide.References.BIPM2006\">BIPM2006</a>] is
an experiment that yields precise and universally repeatable results
rather than a prototype (e.g., the <a href=\"https://en.wikipedia.org/wiki/International_Prototype_Kilogram#International_prototype_kilogram\">international
prototype kilogram</a>) which is carefully controlled and distributed
via replicas.  This approach also makes it easy to normalize certain constants
as in <a href=\"https://en.wikipedia.org/wiki/Natural_units\">natural unit systems</a>.</p>

<p>In addition, the values of the constants can be chosen to
scale the values of variables.  There are physical systems where typical quantities are many orders of
magnitude larger or smaller than the related product of powers of base SI
units (e.g., the domains of astrophysics and atomic physics).  In modeling
those systems, it may help to choose
appropriately small or large values (respectively) for the corresponding
base units so that the product of the number (large or small in magnitude)
and the unit (small or large, respectively) is well-scaled.  This
scaling is usually unnecessary due to the wide range and appropriate
distribution of the real numbers that are representable in floating
point.<sup><a href=\"#fn1\" id=\"ref1\">1</a></sup>  However, in some cases it may improve
computational performance to scale the units and use lower precision.
There are fields of research where, even today, simulations are sometimes
performed in single precision [<a href=\"modelica://QCalc.UsersGuide.References.Brown2011\">Brown2011</a>,
<a href=\"modelica://QCalc.UsersGuide.References.Hess2008\">Hess2008</a>] and
where scaling is a concern [<a href=\"modelica://QCalc.UsersGuide.References.Rapaport2004\">Rapaport2004</a>,
p.&nbsp;29]. The number and the
unit are usually multiplied before the dynamic simulation or even during translation
because the product is often involved in initial conditions or parameter
expressions.
During the simulation, only the value is important, so there is no computational
overhead.  The
value is divided by the display unit after the simulation.</p>

<p>The method is neutral with regards to not only the values of the base
units, but also the choice of the base units and even the number of base
units.  This is an advantage because many systems of units besides
<a href=\"http://en.wikipedia.org/wiki/International_System_of_Units\">SI</a> are
used in science and engineering. As mentioned previously, the choice of
base units is somewhat arbitrary, and different systems of units are based
on different choices.  Some systems of units have fewer base units (lower
rank) than <a href=\"http://en.wikipedia.org/wiki/International_System_of_Units\">SI</a>, since additional constraints are added that exchange base
units for derived units.  For example, the
<a href=\"https://en.wikipedia.org/wiki/Planck_units\">Planck</a>,
<a href=\"https://en.wikipedia.org/wiki/Stoney_units\">Stoney</a>,
<a href=\"https://en.wikipedia.org/wiki/Atomic_units\">Hartree</a>, and
<a href=\"https://en.wikipedia.org/wiki/Atomic_units\">Rydberg</a> systems of units set the
<a href=\"http://en.wikipedia.org/wiki/Boltzmann_constant\">Boltzmann constant</a> equal to one
(<i>k</i><sub>B</sub> = 1)
[<a href=\"http://en.wikipedia.org/wiki/Natural_units\">http://en.wikipedia.org/wiki/Natural_units</a>].
The <a href=\"http://en.wikipedia.org/wiki/Kelvin\">kelvin</a> is eliminated
[<a href=\"modelica://QCalc.UsersGuide.References.Greiner1995\">Greiner1995</a>,
p.&nbsp;386] or, more precisely, considered a derived
unit instead of a base unit.  In <a href=\"http://en.wikipedia.org/wiki/International_System_of_Units\">SI</a>,
the <a href=\"http://en.wikipedia.org/wiki/Kelvin\">kelvin</a> would be derived from the
<a href=\"http://en.wikipedia.org/wiki/Kilogram\">kilogram</a>,
<a href=\"http://en.wikipedia.org/wiki/Metre\">metre</a>, and
<a href=\"http://en.wikipedia.org/wiki/Second\">second</a>, (K &asymp;
1.381&times;10<sup>-23</sup>&nbsp;kg&nbsp;m<sup>2</sup>/s<sup>2</sup>).
In this case, temperature is not an independent dimension.</p>

<p>There are seven base constants in the
<a href=\"modelica://QCalc.Units\">Units</a> package (<i>R</i><sub>&infin;</sub>,
<i>c</i>, <i>k</i><sub>J</sub>, R<sub>K</sub>,
<i>k</i><sub>F</sub>, <i>R</i>, and <i>k</i><sub>A</sub>'; see
<a href=\"modelica://QCalc.Units.Bases\">Units.Bases</a>)
and seven SI base units (m, s, kg, A, K, mol, and cd).
The
<a href=\"http://en.wikipedia.org/wiki/Candela\">candela</a> (cd) is decoupled from these constants
by the <a href=\"http://en.wikipedia.org/wiki/Luminosity_function\">luminosity function</a>,
but the <a href=\"http://en.wikipedia.org/wiki/Radian\">radian</a> (rad) is derived from them.</p>

<p><b>Implementation:</b></p>

<p>The units and constants are defined as variables in this
<a href=\"modelica://QCalc.Units\">Units</a> package.  Each is a
<code>constant</code> of the appropriate type from the
<a href=\"modelica://QCalc.Quantities\">Quantities</a> package. The first
section of this package establishes mathematical constants.  The next section
establishes the independent base constants, which are grouped in a
<code>replaceable</code> record.  The third section derives
other physical constants from the base constants.
The fourth section establishes units from the base constants
using  transcendental and empirical relations.  The rest of the
code derives additional units and constants from those units.
All of the units from [<a href=\"modelica://QCalc.UsersGuide.References.BIPM2006\">BIPM2006</a>] are
defined, which includes the
<a href=\"http://en.wikipedia.org/wiki/International_System_of_Units\">SI</a> units and
some non-SI units.  Other units are included for convenience.
Some prefixed units are defined as well, but most
must be expressed using separate factors (e.g.,
<code>U.Prefixes.k*U.m</code>).</p>

<p>Some units such as <a href=\"http://en.wikipedia.org/wiki/Celsius\">Celsius</a> and
<a href=\"http://en.wikipedia.org/wiki/Decibel\">decibel</a> involve functions other than multiplication.
These units are called <a href=\"modelica://QCalc.UsersGuide.Glossary.'lambda unit'\">lambda units</a> and are defined via
 operator records.  The <code>*</code> and <code>/</code> operators are overloaded
 to call the unit's transformation and its inverse, respectively.</p>

<p>This package (<a href=\"modelica://QCalc.Units\">QCalc.Units</a>) is
abbreviated as <code>U</code> for convenience throughout the rest of
<a href=\"modelica://QCalc\">QCalc</a>, and
<a href=\"modelica://QCalc.Quantities\">QCalc.Quantities</a> is
abbreviated as <code>Q</code>.</p>

<p>The <a href=\"modelica://QCalc.Units.setup\">Units.setup</a> function
establishes unit conversions using the values of the units, constants, and
prefixes.  These conversions may include offsets. The function also
sets the default display units.  It is automatically called when
<a href=\"modelica://QCalc\">QCalc</a> is loaded from the
<a href=\"modelica://QCalc/../load.mos\">load.mos</a> script.  It can also be called
manually from the \"Re-initialize the units\" command available in the
Modelica development environment from the <a href=\"modelica://QCalc.Units\">Units</a>
package and its subpackages.  A spreadsheet
(<a href=\"modelica://QCalc/Resources/quantities.xlsx\">Resources/quantities.xlsx</a>)
is available to help maintain the quantities, default units, and the setup
function.</p>

<p>The values of the units, constants, and prefixes can be evaluated by
translating the <a href=\"modelica://QCalc.Units.Examples.Evaluate\">Units.Examples.Evaluate</a>
model.  This defines the values in the workspace of the development
environment. For convenience, the <a href=\"modelica://QCalc/../load.mos\">load.mos</a>
script automatically translates that model and saves the result as \"units.mos\" in the working
directory.</p>

<p>In order to interpret the simulation results stored in a file, it is necessary to know
the values of the base constants.  Since these may be changed, it is a good idea to
drop <a href=\"modelica://QCalc.Units.UnitSystem\">QCalc.Units.UnitSystem</a>
into your model to record the values of the base constants in the results.</p>

<p>Although it is not necessary since
<a href=\"http://www.modelica.org\">Modelica</a> is acausal, the declarations in this
package are sorted so that they can be easily ported to imperative/causal
languages (e.g., <a href=\"http://www.python.org\">Python</a>
and C).</p>

<p><b>Some notes on angle:</b></p>

<p>As mentioned on the <a href=\"modelica://QCalc.UsersGuide.GettingStarted\">getting started</a> page and
in the <a href=\"modelica://QCalc.Quantities\">Quantities</a>
package, angle is a dimension.  This is different from
<a href=\"http://en.wikipedia.org/wiki/International_System_of_Units\">SI</a>,
where angle is considered dimensionless (rad = 1)
[<a href=\"modelica://QCalc.UsersGuide.References.BIPM2006\">BIPM2006</a>].<sup><a href=\"#fn2\" id=\"ref2\">2</a></sup>
Units of angle such as the cycle (cyc),
<a href=\"https://en.wikipedia.org/wiki/Radian\">radian</a> (rad), and
<a href=\"https://en.wikipedia.org/wiki/Degree_(angle)\">degree</a> (deg) must be explicitly included in the expression of
quantities, but they often cancel in equations relating quantities.  The following
differences are noted from the traditional
<a href=\"http://en.wikipedia.org/wiki/International_System_of_Units\">SI</a>
representation:
<ol>

<li>The <a href=\"https://en.wikipedia.org/wiki/Radian\">radian</a> is defined as the cycle divided by two pi (rad =
cyc/2&pi;), which is not necessarily one because angle is derived from the
independent base constants (as mentioned above).</li>

<li>Solid angle has the dimensionality of
squared angle. The <a href=\"https://en.wikipedia.org/wiki/Steradian\">streradian</a> (sr) is defined as the
squared radian (rad<sup>2</sup>), not one.</li>

<li>Frequency and rotational velocity have the dimensionality of angle per time.
The <a href=\"https://en.wikipedia.org/wiki/Hertz\">hertz</a> (Hz) is defined as cyc/s (not s<sup>-1</sup>).</li>

<li>The cross product (&times;) introduces a
factor of rad<sup>-1</sup>.  This means that:
<ul><li>Torque, defined as <b><i>r</i></b>&times;<b><i>F</i></b>, has the dimensionality of energy per angle.
Where J or N&nbsp;m is traditionally used to express torque, J/rad (or N&nbsp;m/rad) should be used.</li>
<li>A factor of 2&pi; appears in the the Maxwell-Faraday equation and Amp&egrave;re's circuital law of
<a href=\"https://en.wikipedia.org/wiki/Maxwell's_equations\">Maxwell's equations</a>:
<ul><li>&nabla;&times;<b><i>E</i></b> = -2&pi;&nbsp;&part;<b><i>B</i></b>/&part;<i>t</i></li>
<li>&nabla;&times;<b><i>B</i></b> = 2&pi;&nbsp;&mu;<sub>0</sub>(<i>J</i> + &epsilon;<sub>0</sub>&nbsp;&part;<b><i>E</i></b>/&part;<i>t</i>)
(This formation is also based on other points below.)</li>
</li>
</li>

<li>Rotational momentum has a factor of angle in the denominator.
<ul>
<li>The <a href=\"http://en.wikipedia.org/wiki/Planck_constant\">Planck constant</a> (<i>h</i>)
can be expressed in J/Hz or
J&nbsp;s/rad (but not J&nbsp;s): <ul>
<li><i>h</i>&nbsp;cyc &asymp; 6.626&times;10<sup>-34</sup>&nbsp;J&nbsp;s (the
traditional expression of the <a href=\"http://en.wikipedia.org/wiki/Planck_constant\">Planck constant</a>
[<a href=\"modelica://QCalc.UsersGuide.References.NIST2010\">NIST2010</a>])</li>
<li><i>h</i>&nbsp;rad &asymp; 1.055&times;10<sup>-34</sup>&nbsp;J&nbsp;s (the
traditional expression of the reduced Planck constant
[<a href=\"modelica://QCalc.UsersGuide.References.NIST2010\">NIST2010</a>])</li></ul></li>
<li>The quantum of circulation (rotational momentum per mass) is expressed as:
<ul>
<li>kappa &asymp; 3.637&times;10<sup>-4</sup>&nbsp;m<sup>2</sup>/(cyc&nbsp;s)</li>
</ul>
</li></ul>
</ul>
</li>

<li>Rotational inertia has a factor of squared angle in the denominator.  It can be expressed in
kg&nbsp;m<sup>2</sup>/rad<sup>2</sup>.</li>

<li>Wavenumber has the dimensionality of angle per
length.  Where m<sup>-1</sup> (or cm<sup>-1</sup>, etc.) is traditionally used to express wavenumber,
cyc/m (or cyc/cm, etc.) should be used instead.  Reciprocally, wavelength has the dimensionality of length per angle
and is expressed using m/cyc (or cm/cyc, etc.). This implies that:
<ul><li><i>R</i><sub>&infin;</sub> &asymp; 10973732&nbsp;cyc/m</li>
<li><i>c</i><sub>2</sub> = 1.439&times;10<sup>-2</sup>&nbsp;m&nbsp;K/cyc</li>
<li><i>c</i><sub>3&nbsp;&lambda;</sub> &asymp; 2.898&times;10<sup>-3</sup>&nbsp;m&nbsp;K/cyc</li>
<li>&lambda;<sub>e</sub>&nbsp;cyc &asymp; 2.426&times;10<sup>-12</sup>&nbsp;m (The right side is the traditional expression
of the electron's Compton wavelength
[<a href=\"modelica://QCalc.UsersGuide.References.NIST2010\">NIST2010</a>].)</li>
<li>&lambda;<sub>e</sub>&nbsp;rad  &asymp; 386.2&times;10<sup>-15</sup>&nbsp;m (The right side is the traditional expression of the
electron's Compton wavelength over 2&nbsp;&pi;
[<a href=\"modelica://QCalc.UsersGuide.References.NIST2010\">NIST2010</a>].)</li>
</ul></li>

<li>Magnetic flux and related quantities have a factor of angle in the denominator.
<ul>
<li>The <a href=\"https://en.wikipedia.org/wiki/Weber_(unit)\">weber</a> (Wb) is defined as V/Hz or V&nbsp;s/cyc (not V&nbsp;s).</li>
<li>The <a href=\"http://en.wikipedia.org/wiki/Von_Klitzing_constant\">von Klitzing constant</a>
and the <a href=\"http://en.wikipedia.org/wiki/Impedance_of_free_space\">characteristic impedance of vacuum</a>
are expressed as: <ul>
<li><i>R</i><sub>K</sub> &asymp; 25813&nbsp;&Omega;/cyc</li>
<li><i>Z</i><sub>0</sub> &asymp; 376.7&nbsp;&Omega;/cyc</li></ul>
since they are quantities of magnetic flux per charge.
Reciprocally, the <a href=\"https://en.wikipedia.org/wiki/Conductance_quantum\">conductance quantum</a> has a
factor of angle in the numerator:<ul>
<li><i>G</i><sub>0</sub> &asymp; 7.748&times;10<sup>-5</sup>&nbsp;S&nbsp;cyc</li></ul>
</li>
<li>The fine-structure constant (<i>k</i><sub>A</sub>&nbsp;<i>c</i>/<i>R</i><sub>K</sub>) is therefore an angle:
<ul>
<li>&alpha;/rad &asymp; 7.297&times;10<sup>-3</sup> (The right side is the traditional expression
[<a href=\"modelica://QCalc.UsersGuide.References.NIST2010\">NIST2010</a>].)
</li>
</ul>
<li>A factor of cyc must be added to the denominator of the
<a href=\"http://physics.nist.gov/cgi-bin/cuu/Value?aumfd\">traditional
symbolic expression of the atomic unit of magnetic flux density</a>.</li>
</ul>

<li>The
<a href=\"http://en.wikipedia.org/wiki/Vacuum_permeability\">magnetic constant</a>
has a factor of squared angle in the denominator:<ul>
<li>&mu;<sub>0</sub> = 4&pi;&times;10<sup>-7</sup>&nbsp;H/(m&nbsp;cyc<sup>2</sup>) = 2<i>k</i><sub>A</sub>/(cyc&nbsp;rad),
where 2<i>k</i><sub>A</sub> is the factor in
<a href=\"http://en.wikipedia.org/wiki/Amp%C3%A8re's_force_law\">Amp&egrave;re's force law</a>.</li>
</ul>
In the basic equation for the inductance of a solenoid in vacuum, <i>N</i> (the number of turns)
is replaced by the angle of the wound coil (&theta; = <i>N</i>&nbsp;cyc):
<ul>
<li><i>L</i> = &mu;<sub>0</sub>&nbsp;&theta;<sup>2</sup>&nbsp;<i>A</i>/&#8467;.</li>
</ul>
</ul>

<li>The auxiliary magnetic field (<i>H</i>), magnetic moment, and related quantities have a factor of angle in the
numerator.  <ul>
<li>The <a href=\"http://en.wikipedia.org/wiki/Oersted\">oersted</a> is expressed as:
<ul>
<li>Oe = (10<sup>3</sup>/4&pi;) AT/m, where AT is the
<a href=\"http://en.wikipedia.org/wiki/Ampere-turn\">ampere-turn</a> (AT = A&nbsp;cyc)</li>
</ul>
but the cycle or turn is traditionally neglected [<a href=\"http://www.bipm.org/\">BIPM</a>].</li>
<li>
A factor of cyc must be added to the
<a href=\"http://physics.nist.gov/cgi-bin/cuu/Value?aumdm\">traditional
symbolic expression of the atomic unit of magnetic dipole moment</a>.</li></ul></li>

<li>It follows that magnetizability, the ratio between magnetic moment and magnetic flux density,
has squared angle in the numerator.  A factor of cyc<sup>2</sup> must be added to the
<a href=\"http://physics.nist.gov/cgi-bin/cuu/Value?aumag\">traditional
symbolic expression of the atomic unit of magnetizability</a>.</li>

<li>The <a href=\"https://en.wikipedia.org/wiki/Henry_(unit)\">henry</a> (H) is defined as V&nbsp;s/A (not Wb/A).
Although it related to magnetics, the <a href=\"https://en.wikipedia.org/wiki/Henry_(unit)\">henry</a> is applied to
electrical circuits, so it does not include any factors of angle.
</li>

<li>Traditional trigonometric functions accept angles in radians.  Angles should be divided by
the <a href=\"https://en.wikipedia.org/wiki/Radian\">radian</a> (<code>U.rad</code>) before passing to these functions
(e.g., <code>sin(theta/U.rad)</code>) and the result of their inverses should be multiplied by
the <a href=\"https://en.wikipedia.org/wiki/Radian\">radian</a> (e.g., <code>asin(x)*U.rad</code>).</li>

<li>The first radiation constant has a factor of angle to the fourth power in the denominator:
  <ul><li>
  <i>c</i><sub>1</sub>&nbsp;cyc<sup>4</sup> &asymp; 3.742&times;10<sup>-16</sup>&nbsp;W&nbsp;m<sup>2</sup> (The right
  side is the traditional expression
  [<a href=\"modelica://QCalc.UsersGuide.References.NIST2010\">NIST2010</a>].)
  </ul></li>
  </li>
  </ol></p>

<p>The explicit inclusion of angle has several advantages.  First, it
avoids a conflict in the definition of
<a href=\"http://en.wikipedia.org/wiki/International_System_of_Units\">SI units</a>.
<a href=\"http://www.bipm.org/\">BIPM</a> defines the
<a href=\"https://en.wikipedia.org/wiki/Hertz\">hertz</a>
as the reciprocal second (Hz = s<sup>-1</sup>), but states that \"The SI
unit of frequency is given as the hertz, implying the unit cycles per
second\" [<a href=\"modelica://QCalc.UsersGuide.References.BIPM2006\">BIPM2006</a>].
Due to trigonometry (cyc = 2&pi;&nbsp;rad), <a href=\"http://www.bipm.org/\">BIPM</a>'s
definition of the <a href=\"https://en.wikipedia.org/wiki/Radian\">radian</a> as one (rad = 1)
implies that the cycle is two pi
(cyc = 2&pi;) and the <a href=\"http://en.wikipedia.org/wiki/Hertz_(unit)\">hertz</a>
is not cycles per second but rather cycles per
second divided by two pi (Hz = cyc/(2&pi;&nbsp;s)).</p>

<p>The second advantage is that the use of explicit angles avoids
the potential confusion between energy and torque in SI
[<a href=\"modelica://QCalc.UsersGuide.References.BIPM2006\">BIPM2006</a>].
Torque is expressed as the cross product
of force and radius. The cross product introduces a factor of rad<sup>-1</sup>,
so the result is energy per angle, which is clearly
distinct from energy.  The angle cancels in the expression of rotational
power&mdash;the product of torque and rotational velocity (angle per time).</p>

<p>Also, the inclusion of angle avoids the
need to use different variables depending on the chosen unit of angle.
For example, frequency is sometimes represented by a variable in hertz
(e.g., &nu;) and other times by a variable in radians per second (e.g.,
&omega;).  If angle is explicit, then one variable will suffice (<i>f</i> =
&nu;&nbsp;cyc/s = &omega;&nbsp;rad/s).  As alluded to earlier, there is no need for the
reduced Planck constant (i.e., <i>h</i> &asymp;
6.6261&times;10<sup>-34</sup>&nbsp;J/Hz &asymp; 1.0546&times;10<sup>-34</sup>&nbsp;J&nbsp;s/rad).</p>

<p>Fourth, if angle is counted as a dimension, the
<a href=\"https://en.wikipedia.org/wiki/Fine-structure_constant\">fine-structure constant</a> is not
dimensionless.  This addresses the conundrum of a dimensionless constant that cannot be
mathematically derived.</p>

<p>Another possible advantage appears if we define the size of a circle
(<i>S</i>) as length per angle&mdash;radius per radian (<i>r</i>/rad)
or, equivalently, circumference per cycle.  This simplifies the
representation of some common equations because explicit factors of 2&pi; are eliminated.
The circumference of one circle is <i>S</i>&nbsp;cyc.  The surface area of
one sphere is <i>S</i><sup>2</sup>&nbsp;sp, where sp = 4&pi;&nbsp;sr is the
spat, a unit of solid angle.<sup><a href=\"#fn3\" id=\"ref3\">3</a></sup>
Coulomb's force law can be expressed using the electric constant (&epsilon;<sub>0</sub>) without
a explicit factor of 1/4&pi;:
<blockquote>
 <i>F</i> = (1/&epsilon;<sub>0</sub>)&nbsp;<i>q</i><sub>1</sub><i>q</i><sub>2</sub>/(<i>S</i><sup>2</sup>&nbsp;sp)
</blockquote>
where <i>S</i><sup>2</sup>&nbsp;sp is the surface area of the sphere centered at one
charge and touching the other.
Since <i>S</i> = <i>r</i>/rad, sp = 4&pi;&nbsp;sr, and sr = rad<sup>2</sup>,
this is
<blockquote>
 <i>F</i> = <i>k</i><sub>C</sub>&nbsp;<i>q</i><sub>1</sub><i>q</i><sub>2</sub>/<i>r</i><sup>2</sup>
 </blockquote>
where <i>k</i><sub>C</sub> is the electric constant, which is
1/(4&pi;&nbsp;&epsilon;<sub>0</sub>) as expected.
Thus, there may not be a
need to maintain the electric force constant as a separate variable from
the electric constant.</p>

<hr>

<p id=\"fn1\"><small>1. The Modelica specification recommends that floating point
numbers be represented in at least IEEE double precision, which covers
magnitudes from &sim;2.225&times;10<sup>-308</sup> to
&sim;1.798&times;10<sup>308</sup> [<a href=\"modelica://QCalc.UsersGuide.References.Modelica2010\">Modelica2010</a>,
p.&nbsp;13].<a href=\"#ref1\" title=\"Jump
back to footnote 1 in the text.\">&#8629;</a></small></p>

<p id=\"fn2\"><small>2. The common argument that angle is
dimensionless (\"angle is a ratio of lengths\") is flawed.
Angle is the not the ratio of arclength to radius.
Rather, angle in radians is the ratio of arclength to radius
(&theta;/rad = <i>L</i>/<i>r</i>).  It is not necessary that angle
(&theta;)   is dimensionless, only that angle and radian (rad) have the
same dimension.   In <a href=\"modelica://QCalc\">QCalc</a>, that
dimension is called angle.   The common (and correct) understanding is
that the radian (rad) is a unit of angle,   just as the metre (m) is a
unit of length.  The dimensionality of the radian  is angle, just as
the dimensionality of the metre is length.<a href=\"#ref2\" title=\"Jump
back to footnote 2 in the text.\">&#8629;</a></small></p>

<p id=\"fn3\"><small>3. The spat (sp) is the solid angle of one sphere, just
as the cycle (cyc) is the angle of one circle.  For mnemonic purposes, sp can be
considered as the abbreviation for sphere as well as spat.<a href=\"#ref3\" title=\"Jump
back to footnote 3 in the text.\">&#8629;</a></small></p>

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

  Commands(executeCall=QCalc.Units.setup() "Re-initialize the units."),
  Icon(graphics={
      Line(
        points={{-66,78},{-66,-40}},
        color={64,64,64},
        smooth=Smooth.None),
      Ellipse(
        extent={{12,36},{68,-38}},
        lineColor={64,64,64},
        fillColor={175,175,175},
        fillPattern=FillPattern.Solid),
      Rectangle(
        extent={{-74,78},{-66,-40}},
        lineColor={64,64,64},
        fillColor={175,175,175},
        fillPattern=FillPattern.Solid),
      Polygon(
        points={{-66,-4},{-66,6},{-16,56},{-16,46},{-66,-4}},
        lineColor={64,64,64},
        smooth=Smooth.None,
        fillColor={175,175,175},
        fillPattern=FillPattern.Solid),
      Polygon(
        points={{-46,16},{-40,22},{-2,-40},{-10,-40},{-46,16}},
        lineColor={64,64,64},
        smooth=Smooth.None,
        fillColor={175,175,175},
        fillPattern=FillPattern.Solid),
      Ellipse(
        extent={{22,26},{58,-28}},
        lineColor={64,64,64},
        fillColor={255,255,255},
        fillPattern=FillPattern.Solid),
      Polygon(
        points={{68,2},{68,-46},{64,-60},{58,-68},{48,-72},{18,-72},{18,-64},{
            46,-64},{54,-60},{58,-54},{60,-46},{60,-26},{64,-20},{68,-6},{68,2}},

        lineColor={64,64,64},
        smooth=Smooth.Bezier,
        fillColor={175,175,175},
        fillPattern=FillPattern.Solid)}));
end Units;
