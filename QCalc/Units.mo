within QCalc;
package Units "Constants and units of physical measure"
  extends Icons.Package;

  function setup "Establish conversions to display quantities in units"
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

    // Generated from QCalc/Resources/quantities.xls, 2014-8-14
    defineDefaultDisplayUnit("L/T2", "m/s2") "Acceleration";
    defineDefaultDisplayUnit("N", "C") "Amount";
    defineDefaultDisplayUnit("1/N", "1/mol") "Reciprocal of amount";
    defineDefaultDisplayUnit("A", "degree") "Angle";
    defineDefaultDisplayUnit("A2", "sr") "Solid angle";
    defineDefaultDisplayUnit("L2", "cm2") "Area";
    defineDefaultDisplayUnit("N2.T2/(L2.M)", "uF") "Capacitance";
    defineDefaultDisplayUnit("N2.T/(L2.M)", "S") "Electrical conductance";
    defineDefaultDisplayUnit("N2.T/(L3.M)", "S/m") "Electrical conductivity";
    defineDefaultDisplayUnit("N/T", "A") "Current";
    defineDefaultDisplayUnit("N/(L2.T)", "A/cm2") "Areic current";
    defineDefaultDisplayUnit("N/L3", "C/cc") "Density";
    defineDefaultDisplayUnit("L2/T", "cm2/s") "Diffusivity";
    defineDefaultDisplayUnit("L2.M/T2", "J") "Energy";
    defineDefaultDisplayUnit("L.T/M", "1/(Pa.s)") "Fluidity";
    defineDefaultDisplayUnit("L.M/T2", "N") "Force";
    defineDefaultDisplayUnit("L.M/(N.T2)", "V/m") "Specific force";
    defineDefaultDisplayUnit("A/T", "Hz") "Frequency";
    defineDefaultDisplayUnit("J.A2", "cd.sr") "Illuminance";
    defineDefaultDisplayUnit("L2.M/N2", "uH") "Inductance";
    defineDefaultDisplayUnit("L", "cm") "Length";
    defineDefaultDisplayUnit("L/N", "m/mol") "Specific length";
    defineDefaultDisplayUnit("J/L2", "cd/m2") "Luminance";
    defineDefaultDisplayUnit("J.A2/L2", "cd.sr/m2") "Luminous emittance";
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
    defineDefaultDisplayUnit("M/N", "g/mol") "Specific mass";
    defineDefaultDisplayUnit("M/L3", "g/cc") "Volumic mass";
    defineDefaultDisplayUnit("N.T/M", "cm2/(V.s)") "Mobility";
    defineDefaultDisplayUnit("L2.M/(A.T)", "J.s/rad") "Rotational momentum";
    defineDefaultDisplayUnit("L.M/(A2.N2)", "H/(m.cyc2)") "Permeability";
    defineDefaultDisplayUnit("N2.T2/(L3.M)", "F/m") "Permittivity";
    defineDefaultDisplayUnit("L3.M/(N2.T2)", "m/F")
      "Reciprocal of permittivity";
    defineDefaultDisplayUnit("L2.M/(N.T2)", "V") "Potential";
    defineDefaultDisplayUnit("L3.M/(A.N.T2)", "V.m/rad")
      "Potential per wavenumber";
    defineDefaultDisplayUnit("L2.M/T3", "W") "Power";
    defineDefaultDisplayUnit("L4.M/T3", "W.m2") "Power times area";
    defineDefaultDisplayUnit("M/T3", "W/m2") "Areic power";
    defineDefaultDisplayUnit("N4.T5/(L8.M3)", "W/(m2.K4)")
      "Areic power per 4th power of potential";
    defineDefaultDisplayUnit("M/(L.T2)", "kPa") "Pressure";
    defineDefaultDisplayUnit("L2.M/(N2.T)", "ohm") "Electrical resistance";
    defineDefaultDisplayUnit("M/(L.N.T)", "Pa/A") "Fluid resistance";
    defineDefaultDisplayUnit("L.T/N", "cm/A") "Resistivity";
    defineDefaultDisplayUnit("M/T2", "N/m") "Surface tension";
    defineDefaultDisplayUnit("T", "s") "Time";
    defineDefaultDisplayUnit("1/T", "1/s") "Reciprocal of time";
    defineDefaultDisplayUnit("L/T", "cm/s") "Velocity";
    defineDefaultDisplayUnit("L2/T2", "J/g") "Squared velocity";
    defineDefaultDisplayUnit("M/(L.T)", "Pa.s") "Viscosity";
    defineDefaultDisplayUnit("L3", "cc") "Volume";
    defineDefaultDisplayUnit("L3/N", "cc/C") "Specific volume";
    defineDefaultDisplayUnit("L/A", "m/rad") "Wavelength";
    defineDefaultDisplayUnit("L2/(A.T)", "m2/(cyc.s)")
      "Wavelength times velocity";
    defineDefaultDisplayUnit("A/L", "rad/m") "Wavenumber";

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
        "1/N",
        "1/C",
        C) "Reciprocal of amount";
    defineUnitConversion(
        "1/N",
        "1/mol",
        mol) "Reciprocal of amount";
    defineUnitConversion(
        "A",
        "deg",
        1/deg) "Angle";
    defineUnitConversion(
        "A",
        "rad",
        1/rad) "Angle";
    defineUnitConversion(
        "A2",
        "sr",
        1/sr) "Solid angle";
    defineUnitConversion(
        "L2",
        "cm2",
        1/cm^2) "Area";
    defineUnitConversion(
        "L2",
        "m2",
        1/m^2) "Area";
    defineUnitConversion(
        "N2.T2/(L2.M)",
        "F",
        1/F) "Capacitance";
    defineUnitConversion(
        "N2.T2/(L2.M)",
        "uF",
        1/(Prefixes.u*F)) "Capacitance";
    defineUnitConversion(
        "N2.T/(L2.M)",
        "S",
        1/S) "Electrical conductance";
    defineUnitConversion(
        "N2.T/(L3.M)",
        "S/m",
        m/S) "Electrical conductivity";
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
        "W/K",
        K/W) "Current";
    defineUnitConversion(
        "N/(L2.T)",
        "A/cm2",
        cm^2/A) "Areic current";
    defineUnitConversion(
        "N/(L2.T)",
        "A/m2",
        m^2/A) "Areic current";
    defineUnitConversion(
        "N/(L2.T)",
        "kat/cm2",
        cm^2/kat) "Areic current";
    defineUnitConversion(
        "N/(L2.T)",
        "kat/m2",
        m^2/kat) "Areic current";
    defineUnitConversion(
        "N/L3",
        "C/cc",
        cc/C) "Density";
    defineUnitConversion(
        "N/L3",
        "C/m3",
        m^3/C) "Density";
    defineUnitConversion(
        "N/L3",
        "J/(m3.K)",
        m^3*K/J) "Density";
    defineUnitConversion(
        "N/L3",
        "M",
        1/M) "Density";
    defineUnitConversion(
        "L2/T",
        "cm2/s",
        s/cm^2) "Diffusivity";
    defineUnitConversion(
        "L2/T",
        "m2/s",
        s/m^2) "Diffusivity";
    defineUnitConversion(
        "L2/T",
        "mm^2/s",
        s/((Prefixes.m*m)^2)) "Diffusivity";
    defineUnitConversion(
        "L2.M/T2",
        "J",
        1/J) "Energy";
    defineUnitConversion(
        "L.T/M",
        "1/(Pa.s)",
        Pa*s) "Fluidity";
    defineUnitConversion(
        "L.T/M",
        "cm.s/g",
        g/(cm*s)) "Fluidity";
    defineUnitConversion(
        "L.M/T2",
        "N",
        1/N) "Force";
    defineUnitConversion(
        "L.M/(N.T2)",
        "V/m",
        m/V) "Specific force";
    defineUnitConversion(
        "A/T",
        "Hz",
        1/Hz) "Frequency";
    defineUnitConversion(
        "A/T",
        "rad/s",
        s/rad) "Frequency";
    defineUnitConversion(
        "J.A2",
        "cd.sr",
        1/(cd*sr)) "Illuminance";
    defineUnitConversion(
        "J.A2",
        "cd.sp",
        1/(cd*sp)) "Illuminance";
    defineUnitConversion(
        "L2.M/N2",
        "H",
        1/H) "Inductance";
    defineUnitConversion(
        "L2.M/N2",
        "uH",
        1/(Prefixes.u*H)) "Inductance";
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
        1/(Prefixes.m*m)) "Length";
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
        "N/A2",
        A^2/N) "Specific length times specific mass";
    defineUnitConversion(
        "J/L2",
        "cd/m2",
        m^2/cd) "Luminance";
    defineUnitConversion(
        "J/L2",
        "cd/cm2",
        cm^2/cd) "Luminance";
    defineUnitConversion(
        "J.A2/L2",
        "cd.sr/m2",
        m^2/(cd*sr)) "Luminous emittance";
    defineUnitConversion(
        "J.A2/L2",
        "cd.sp/m2",
        m^2/(cd*sp)) "Luminous emittance";
    defineUnitConversion(
        "J",
        "cd",
        1/cd) "Luminous intensity";
    defineUnitConversion(
        "A.L2.N/T",
        "J/T",
        T/J) "Magnetic dipole moment";
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
        "M/(A.N.T)",
        "T",
        1/T) "Areic magnetic flux";
    defineUnitConversion(
        "A.N.T/(L2.M)",
        "1/Wb",
        Wb) "Reciprocal of magnetic flux";
    defineUnitConversion(
        "L2.M/(A.N2.T)",
        "Wb/C",
        C/Wb) "Specific magnetic flux";
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
        "M/N",
        "g/mol",
        mol/g) "Specific mass";
    defineUnitConversion(
        "M/N",
        "kg/mol",
        mol/kg) "Specific mass";
    defineUnitConversion(
        "M/N",
        "ug/C",
        C/(Prefixes.u*g)) "Specific mass";
    defineUnitConversion(
        "M/L3",
        "g/cc",
        cc/g) "Volumic mass";
    defineUnitConversion(
        "M/L3",
        "kg/m3",
        m^3/kg) "Volumic mass";
    defineUnitConversion(
        "N.T/M",
        "C.s/g",
        g/(C*s)) "Mobility";
    defineUnitConversion(
        "N.T/M",
        "cm2/(V.s)",
        V*s/cm^2) "Mobility";
    defineUnitConversion(
        "L2.M/(A.T)",
        "J.s/rad",
        rad/(J*s)) "Rotational momentum";
    defineUnitConversion(
        "1",
        "'%'",
        1/'%') "Number";
    defineUnitConversion(
        "1",
        "J/(mol.K)",
        mol*K/J) "Absolute number";
    defineUnitConversion(
        "L.M/(A2.N2)",
        "H/(m.cyc2)",
        m*cyc^2/H) "Permeability";
    defineUnitConversion(
        "N2.T2/(L3.M)",
        "F/m",
        m/F) "Permittivity";
    defineUnitConversion(
        "L3.M/(N2.T2)",
        "m/F",
        F/m) "Reciprocal of permittivity";
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
        "K",
        1/K) "Absolute potential";
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
        "lm",
        1/lm) "Power";
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
        "lm/m2",
        m^2/lm) "Areic power";
    defineUnitConversion(
        "M/T3",
        "W/m2",
        m^2/W) "Areic power";
    defineUnitConversion(
        "N4.T5/(L8.M3)",
        "W/(m2.K4)",
        m^2*K^4/W) "Areic power per 4th power of potential";
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
        1/(Prefixes.k*Pa)) "Pressure";
    defineUnitConversion(
        "M/(L.T2)",
        "Pa",
        1/Pa) "Pressure";
    defineUnitConversion(
        "M/(L2.T2)",
        "Pa/m",
        m/Pa) "Lineic pressure";
    defineUnitConversion(
        "L2.M/(N2.T)",
        "ohm",
        1/ohm) "Electrical resistance";
    defineUnitConversion(
        "M/(L.N.T)",
        "Pa/A",
        A/Pa) "Fluid resistance";
    defineUnitConversion(
        "L.T/N",
        "cm/A",
        A/cm) "Resistivity";
    defineUnitConversion(
        "L.T/N",
        "m/A",
        A/m) "Resistivity";
    defineUnitConversion(
        "L.T/N",
        "m.K/W",
        W/(m*K)) "Resistivity";
    defineUnitConversion(
        "M/T2",
        "N/m",
        m/N) "Surface tension";
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
        "1/T",
        "1/s",
        s) "Reciprocal of time";
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
        s/(Prefixes.m*m)) "Velocity";
    defineUnitConversion(
        "L/T",
        "um/s",
        s/(Prefixes.u*m)) "Velocity";
    defineUnitConversion(
        "L2/T2",
        "J/g",
        g/J) "Squared velocity";
    defineUnitConversion(
        "L2/T2",
        "Sv",
        1/Sv) "Squared velocity";
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
        "L3/N",
        "cc/C",
        C/cc) "Specific volume";
    defineUnitConversion(
        "L3/N",
        "m3/C",
        C/m^3) "Specific volume";
    defineUnitConversion(
        "L3/N",
        "m3/mol",
        mol/m^3) "Specific volume";
    defineUnitConversion(
        "L/A",
        "m/cyc",
        cyc/m) "Wavelength";
    defineUnitConversion(
        "L/A",
        "m/rad",
        rad/m) "Wavelength";
    defineUnitConversion(
        "L2/(A.T)",
        "m2/(cyc.s)",
        cyc*s/m^2) "Wavelength times velocity";
    defineUnitConversion(
        "A/L",
        "cyc/m",
        m/cyc) "Wavenumber";
    defineUnitConversion(
        "A/L",
        "rad/m",
        m/rad) "Wavenumber";
    // -------- end from QCalc/Resources/quantities.xls

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
    annotation (Documentation(info="<html><p>This function has no inputs or outputs.  It is essentially a script.
The <code>defineDefaultDisplayUnit</code> and <code>defineUnitConversion</code> functions
used here are not defined in the Modelica language (as of version 3.3) but are
recognized by Dymola.</p>

<p>For more information, please see the documentation for the
<a href=\"modelica://QCalc.Units\">Units</a> package.</p></html>"));
  end setup;

  package Examples "Examples"
    extends Icons.ExamplesPackage;
    model Evaluate "Evaluate the values assigned to constants and units"
      extends Icons.Example;

      // **add/update/reorder these to match the Units package:

      // -------------------------------------------------------------------------
      // Mathematical constants
      final constant Q.Number pi=U.pi "pi";
      // -------------------------------------------------------------------------
      // Independent base physical constants and units
      final constant Q.Angle cyc=U.cyc "cycle";
      final constant Q.Wavenumber R_inf=U.R_inf "Rydberg constant";
      final constant Q.Velocity c=U.c "speed of light in vacuum";
      final constant Q.ConductanceElectrical G_0=U.G_0 "conductance quantum";
      final constant Q.MagneticFlux Phi_0=U.Phi_0 "magnetic flux quantum";
      final constant Q.Number k_F=U.k_F "Faraday constant";
      final constant Q.Number R=U.R "gas constant";
      // -------------------------------------------------------------------------
      // SI units that depend on transcendental and arbitrated empirical numbers
      final constant Q.Angle rad=U.rad "radian";
      final constant Q.Length m=U.m "metre";
      final constant Q.Time s=U.s "second";
      final constant Q.MagneticFlux Wb=U.Wb "weber";
      final constant Q.ConductanceElectrical S=U.S "siemens";
      final constant Q.Amount mol=U.mol "mole";
      final constant Q.Potential K=U.K "kelvin";
      // -------------------------------------------------------------------------
      // SI base units [BIPM2006, Table 1] and intermediate units
      final constant Q.Frequency Hz=U.Hz "hertz";
      final constant Q.Potential V=U.V "volt";
      final constant Q.Current A=U.A "ampere";
      final constant Q.Amount C=U.C "coulomb";
      final constant Q.Energy J=U.J "joule";
      final constant Q.Velocity2 Gy=U.Gy "gray";
      final constant Q.Mass kg=U.kg "kilogram ";
      final constant Q.Power W=U.W "watt";
      final constant Q.Power lm=U.lm "lumen";
      final constant Q.Angle2 sr=U.sr "steradian";
      final constant Q.LuminousIntensity cd=U.cd "candela";
      // -------------------------------------------------------------------------
      // SI derived units with special names and symbols [BIPM2006, Table 3]
      final constant Q.Force N=U.N "newton";
      final constant Q.Pressure Pa=U.Pa "pascal";
      final constant Q.MagneticFluxAreic T=U.T "tesla";
      final constant Q.PowerAreic lx=U.lx "lux";
      final constant Q.Capacitance F=U.F "farad";
      final constant Q.ResistanceElectrical ohm=U.ohm "ohm (Omega)";
      final constant Q.Inductance H=U.H "henry";
      final constant Q.Current kat=U.kat "katal";
      final constant Q.Mass g=U.g "gram";
      // -------------------------------------------------------------------------
      // Non-SI units accepted for use with SI units [BIPM2006, Table 6]
      final constant Q.Time min=U.min "minute";
      final constant Q.Time hr=U.hr "hour";
      final constant Q.Time d=U.d "day";
      final constant Q.Angle deg=U.deg "degree";
      final constant Q.Volume L=U.L "liter (L or l)";
      // -------------------------------------------------------------------------
      // Derived physical constants and units
      // Electrical -- involving conductance
      final constant Q.Number alpha=U.alpha "fine-structure constant";
      final constant Q.ResistanceElectrical Z_0=U.Z_0
        "characteristic impedance of vacuum";
      final constant Q.Permeability mu_0=U.mu_0 "magnetic constant";
      final constant Q.Permittivity epsilon_0=U.epsilon_0 "electric constant";
      // Electromagnetism -- involving conductance and magnetic flux
      final constant Q.Amount q=U.e "elementary charge";
      final constant Q.Energy eV=U.eV "electron volt";
      final constant Q.MomentumRotational h=U.h "Planck constant";
      final constant Q.Energy Ha=U.Ha "Hartree energy";
      // Chemistry
      final constant Q.AmountReciprocal N_A=U.N_A "Avogadro constant";
      // Thermal physics
      final constant Q.Amount k_B=U.k_B "Boltzmann constant";
      final constant Q.PowerAreicPerPotential4 sigma=U.sigma
        "Stefan-Boltzmann constant";
      final constant Q.PowerArea c_1=U.c_1 "first radiation constant";
      final constant Q.PotentialPerWavenumber c_2=U.c_2
        "second radiation constant";
      final constant Q.PotentialPerWavenumber c_3_f=U.c_3_f
        "Wien frequency displacement law constant";
      final constant Q.MagneticFluxReciprocal c_3_lambda=U.c_3_lambda
        "Wien wavelength displacement law constant";
      // -------------------------------------------------------------------------
      // Other selected non-SI units from [BIPM2006, Table 8]
      final constant Q.Pressure bar=U.bar "bar";
      final constant Q.Length angstrom=U.angstrom "angstrom";
      final constant Q.Angle2 sp=U.sp "spat";
      final constant Q.Pressure atm=U.atm "atmosphere";
      final constant Q.Length cm=U.cm "centimetre";
      final constant Q.Volume cc=U.cc "cubic centimetre";
      final constant Q.Number '%'=U.'%' "percent";
      final constant Q.Density M=U.M "molar";

      annotation (Documentation(info="<html><p>This model may be used to calculate the values of the
  constants and units.</p>

<p>For more information, please see the documentation for the
  <a href=\"modelica://QCalc.Units\">Units</a> package.</p></html>"), Commands(
            executeCall=QCalc.Units.setup() "Re-initialize the units.",
            executeCall=checkModel("QCalc.Units")));
    end Evaluate;

    model Display "Demonstrate the display units for the quantities"
      extends Icons.Example;
      ExampleModel doubleClickMe annotation (Placement(transformation(
            extent={{-20,-10},{20,10}},
            rotation=0,
            origin={0,0})));
      annotation (Diagram(graphics));
    end Display;

    model ExampleModel "Model that uses all of the quantities"

      extends Icons.Block;

      // Generated from QCalc/Resources/quantities.xls, 2014-8-14
      parameter Q.Acceleration Acceleration=1*U.m/U.s^2 "Acceleration";
      parameter Q.Amount Amount=1*U.C "Amount";
      parameter Q.AmountReciprocal AmountReciprocal=1/U.C
        "Reciprocal of amount";
      parameter Q.Angle Angle=1*U.rad "Angle";
      parameter Q.Angle2 Angle2=1*U.sr "Solid angle";
      parameter Q.Area Area=1*U.m^2 "Area";
      parameter Q.Capacitance Capacitance=1*U.F "Capacitance";
      parameter Q.ConductanceElectrical ConductanceElectrical=1*U.S
        "Electrical conductance";
      parameter Q.ConductivityElectrical ConductivityElectrical=1*U.S/U.m
        "Electrical conductivity";
      parameter Q.Current Current=1*U.A "Current";
      parameter Q.CurrentAreic CurrentAreic=1*U.A/U.m^2 "Areic current";
      parameter Q.Density Density=1*U.C/U.m^3 "Density";
      parameter Q.Diffusivity Diffusivity=1*U.m^2/U.s "Diffusivity";
      parameter Q.Energy Energy=1*U.J "Energy";
      parameter Q.Fluidity Fluidity=1/(U.Pa*U.s) "Fluidity";
      parameter Q.Force Force=1*U.N "Force";
      parameter Q.ForceSpecific ForceSpecific=1*U.V/U.m "Specific force";
      parameter Q.Frequency Frequency=1*U.rad/U.s "Frequency";
      parameter Q.Illuminance Illuminance=1*U.cd*U.sr "Illuminance";
      parameter Q.Inductance Inductance=1*U.H "Inductance";
      parameter Q.Length Length=1*U.m "Length";
      parameter Q.LengthSpecific LengthSpecific=1*U.m/U.C "Specific length";
      parameter Q.LengthSpecificMassSpecific LengthSpecificMassSpecific=1*U.N/U.A
          ^2 "Specific length times specific mass";
      parameter Q.Luminance Luminance=1*U.cd/U.m^2 "Luminance";
      parameter Q.LuminousEmittance LuminousEmittance=1*U.cd*U.sr/U.m^2
        "Luminous emittance";
      parameter Q.LuminousIntensity LuminousIntensity=1*U.cd
        "Luminous intensity";
      parameter Q.MagneticDipoleMoment MagneticDipoleMoment=1*U.J/U.T
        "Magnetic dipole moment";
      parameter Q.MagneticFieldAux MagneticFieldAux=1*U.AT/U.m
        "Auxiliary magnetic field";
      parameter Q.MagneticFlux MagneticFlux=1*U.Wb "Magnetic flux";
      parameter Q.MagneticFluxAreic MagneticFluxAreic=1*U.T
        "Areic magnetic flux";
      parameter Q.MagneticFluxReciprocal MagneticFluxReciprocal=1/U.Wb
        "Reciprocal of magnetic flux";
      parameter Q.MagneticFluxSpecific MagneticFluxSpecific=1*U.Wb/U.C
        "Specific magnetic flux";
      parameter Q.MagnetomotiveForce MagnetomotiveForce=1*U.AT
        "Magnetomotive force";
      parameter Q.Mass Mass=1*U.kg "Mass";
      parameter Q.MassSpecific MassSpecific=1*U.Prefixes.u*U.g/U.C
        "Specific mass";
      parameter Q.MassVolumic MassVolumic=1*U.kg/U.m^3 "Volumic mass";
      parameter Q.Mobility Mobility=1*U.C*U.s/U.g "Mobility";
      parameter Q.MomentumRotational MomentumRotational=1*U.J*U.s/U.rad
        "Rotational momentum";
      parameter Q.Number Number=1 "Number";
      parameter Q.NumberAbsolute NumberAbsolute=1*U.J/(U.mol*U.K)
        "Absolute number";
      parameter Q.Permeability Permeability=1*U.H/(U.m*U.cyc^2) "Permeability";
      parameter Q.Permittivity Permittivity=1*U.F/U.m "Permittivity";
      parameter Q.PermittivityReciprocal PermittivityReciprocal=1*U.m/U.F
        "Reciprocal of permittivity";
      parameter Q.Potential Potential=1*U.V "Potential";
      parameter Q.PotentialAbsolute PotentialAbsolute=1*U.K
        "Absolute potential";
      parameter Q.PotentialPerWavenumber PotentialPerWavenumber=1*U.V*U.m/U.rad
        "Potential per wavenumber";
      parameter Q.Power Power=1*U.W "Power";
      parameter Q.PowerArea PowerArea=1*U.W*U.m^2 "Power times area";
      parameter Q.PowerAreic PowerAreic=1*U.W/U.m^2 "Areic power";
      parameter Q.PowerAreicPerPotential4 PowerAreicPerPotential4=1*U.W/(U.m^2*
          U.K^4) "Areic power per 4th power of potential";
      parameter Q.Pressure Pressure=1*U.Pa "Pressure";
      parameter Q.PressureAbsolute PressureAbsolute=1*U.Pa "Absolute pressure";
      parameter Q.PressureLineic PressureLineic=1*U.Pa/U.m "Lineic pressure";
      parameter Q.ResistanceElectrical ResistanceElectrical=1*U.ohm
        "Electrical resistance";
      parameter Q.ResistanceFluid ResistanceFluid=1*U.Pa/U.A "Fluid resistance";
      parameter Q.Resistivity Resistivity=1*U.m/U.A "Resistivity";
      parameter Q.SurfaceTension SurfaceTension=1*U.N/U.m "Surface tension";
      parameter Q.Time Time=1*U.s "Time";
      parameter Q.TimeAbsolute TimeAbsolute=1*U.s "Absolute time";
      parameter Q.TimeReciprocal TimeReciprocal=1/U.s "Reciprocal of time";
      parameter Q.Velocity Velocity=1*U.m/U.s "Velocity";
      parameter Q.Velocity2 Velocity2=1*U.Sv "Squared velocity";
      parameter Q.Viscosity Viscosity=1*U.Pa*U.s/1 "Viscosity";
      parameter Q.Volume Volume=1*U.m^3 "Volume";
      parameter Q.VolumeSpecific VolumeSpecific=1*U.m^3/U.C "Specific volume";
      parameter Q.VolumeSpecificAbsolute VolumeSpecificAbsolute=1*U.m^3/U.C
        "Absolute specific volume";
      parameter Q.Wavelength Wavelength=1*U.m/U.rad "Wavelength";
      parameter Q.WavelengthVelocity WavelengthVelocity=1*U.m^2/(U.cyc*U.s)
        "Wavelength times velocity";
      parameter Q.Wavenumber Wavenumber=1*U.rad/U.m "Wavenumber";
      // -------- end from QCalc/Resources/quantities.xls
      annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{
                -100,-100},{100,100}})), Icon(coordinateSystem(
              preserveAspectRatio=false, extent={{-100,-100},{100,100}})));
    end ExampleModel;
  end Examples;

  package Bases "Sets of base constants and units"
    extends Icons.Package;
    // TODO note that quantities must be updated to change unit system to CGS, etc.

    record Gaussian
      "<html>Base constants and units for Gaussian units (<i>k</i><sub>A</sub> = <i>k</i><sub>C</sub> = 1)</html>"
      extends Base(final c=1,final R_K=25812.8074434/299792458e-7);
      annotation (Documentation(info="<html><p>Gaussian systems of units impose that:</p>
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

    record Hartree "Base constants and units for Hartree atomic units"
      extends Base(
        final R_inf=299792458e-7*pi/25812.8074434,
        final c=1/(2*R_inf),
        final k_J=2,
        final R_K=1,
        k_Aprime=2*pi*R_K/c);
      annotation (Documentation(info="<html>
<p>Stoney units impose that:
  <ol> 
  <li>the elementary charge is one (<i>q</i> = 1),</li>
  <li>Planck's constant is two pi (<i>h</i> = 2&pi;),</li>
  <li>the electric force constant is one (<i>k</i><sub>C</sub> = 1), and</li>
  <li>the mass of an electron is one (4&pi;&nbsp;&nbsp;<i>k</i><sub>A</sub>&nbsp;<i>R</i><sub>&infin;</sub>&nbsp;<i>q</i><sup>2</sup> = &alpha;<sup>3</sup>).
  </ol></p>
  
<p>Please see the documentation for the
  <a href=\"modelica://QCalc.Units\">Units</a> package.</p></html>"), Commands(
            executeCall=QCalc.Units.setup() "Re-initialize the units."));
    end Hartree;

    record LH
      "<html>Base constants and units for Lorentz-Heaviside units (&mu;<sub>0</sub> = &epsilon;<sub>0</sub> = 1)</html>"
      extends Base(final c=1,final R_K=25812.8074434/(4*pi*299792458e-7));
      annotation (Documentation(info="<html><p>Lorentz-Heaviside systems of units impose that:</p>
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
  <a href=\"modelica://QCalc.Units\">Units</a> package.</p></html>"), Commands(
            executeCall=QCalc.Units.setup() "Re-initialize the units."));
    end Stoney;

    record SIKmol
      "<html>Base constants and units for SI with <i>k</i><sub>F</sub> and <i>R</i> normalized instead of K and mol</html>"
      extends Base(
        final R_inf=10973731.568539*2*pi,
        final c=299792458,
        final k_J=483597.870e9*2*pi,
        final R_K=25812.8074434/(2*pi),
        final k_F=1,
        final R=1,
        final k_Aprime=2*pi*R_K/c);
      annotation (Documentation(info="<html><p>The values of the un-normalized SI base units are (see
  <a href=\"modelica://QCalc/Resources/Documentation/QCalc/Bases/unit-systems.cdf\">Resources/unit-systems.cdf</a>):</p>
  <ul>
  <li>K &asymp; 8.61733e-5</li>
  <li>mol &asymp; 96485.3</li>
  </ul>

<p>For more information, please see the documentation for the
  <a href=\"modelica://QCalc.Units\">Units</a> package.</p></html>"), Commands(
            executeCall=QCalc.Units.setup() "Re-initialize the units."));
    end SIKmol;

    record Base "Base constants and units"
      extends Icons.Record;

      constant Q.Wavenumber R_inf=1
        "<html><a href=http://en.wikipedia.org/wiki/Rydberg_constant>Rydberg constant</a> (<i>R</i><sub>&infin;</sub>)</html>";
      constant Q.Velocity c=1
        "<html><a href=http://en.wikipedia.org/wiki/Speed_of_light>speed of light</a></html>";
      constant Q.MagneticFluxReciprocal k_J=1
        "<html><a href=http://en.wikipedia.org/wiki/Josephson_constant>Josephson constant</a> (<i>k</i><sub>J</sub>)</html>";
      constant Q.MagneticFluxSpecific R_K=1
        "<html><a href=http://en.wikipedia.org/wiki/Von_Klitzing_constant>von Klitzing constant</a> (<i>R</i><sub>K</sub>)</html>";
      constant Q.Number k_F=1
        "<html><a href=http://en.wikipedia.org/wiki/Faraday_constant>Faraday constant</a> (<i>k</i><sub>F</sub>)</html>";
      constant Q.Number R=1
        "<html><a href=http://en.wikipedia.org/wiki/Gas_constant>gas constant</a></html>";
      constant Q.LengthSpecificMassSpecific k_Aprime=1
        "<html>modified Ampere constant (<i>k</i><sub>A</sub> cyc/&alpha;)</html>";
      constant Boolean rational=true "true if the unit system is rationalized";

      annotation (Documentation(info="<html><p>Please see the notes in the Modelica code and the documentation of the
  <a href=\"modelica://QCalc.Units\">Units</a> package.</p></html>"), Commands(
            executeCall=QCalc.Units.setup() "Re-initialize the units."));
    end Base;
    annotation (Documentation(info="<html>
  <p>Some systems of units
  are not compatible with <a href=\"modelica://Units\">Units</a>.
  Although the structure of the <a href=\"modelica://QCalc.Units\">Units</a> package 
  is general, the models in <a href=\"modelica://Units\">Units</a>
  require that the Faraday and gas constants are
  normalized to one.  It follows that <i>k</i><sub>B</sub> = <i>q</i>.  
  This is not
  the case for the Planck, Rydberg, and Natural systems of units
  [<a href=\"http://en.wikipedia.org/wiki/Natural_units\">http://en.wikipedia.org/wiki/Natural_units</a>].</p>

  <p>The quasi-SI
  sets in this package are named by listing (in alphabetical order) the two units (out of A, cd, K, kg, m, mol, and s) that are
  <i>not</i> normalized for the sake of normalizing the Faraday and gas constants. 
  There are eight possible systems of this type (<a href=\"modelica://QCalc.Units.Bases.SIAK\">SIAK</a>,
  <a href=\"modelica://QCalc.Units.Bases.SIAm\">SIAm</a>,
  <a href=\"modelica://QCalc.Units.Bases.SIAs\">SIAs</a>,
  <a href=\"modelica://QCalc.Units.Bases.SIKmol\">SIKmol</a>,
  <a href=\"modelica://QCalc.Units.Bases.SIKs\">SIKs</a>,
  <a href=\"modelica://QCalc.Units.Bases.SImmol\">SImmol</a>,
  <a href=\"modelica://QCalc.Units.Bases.SIms\">SIms</a>, and
  <a href=\"modelica://QCalc.Units.Bases.SImols\">SImols</a>).</p>

  <p>For more information, please see the documentation for the
  <a href=\"modelica://QCalc.Units\">Units</a> package.</p></html>"), Commands(
          executeCall=QCalc.Units.setup() "Re-initialize the units."));
  end Bases;

  package Prefixes "SI prefixes"
    extends Icons.Package;

    // [BIPM2006, Table 5]:
    final constant Real Y=1e24 "yotta";
    final constant Real Z=1e21 "zetta";
    final constant Real E=1e18 "exa";
    final constant Real P=1e15 "peta";
    final constant Real T=1e12 "tera";
    final constant Real G=1e9 "giga";
    final constant Real M=1e6 "mega";
    final constant Real k=1e3 "kilo";
    final constant Real h=1e2 "hecto";
    final constant Real da=1e1 "deca";
    final constant Real d=1e-1 "deci";
    final constant Real c=1e-2 "centi";
    final constant Real m=1e-3 "milli";
    final constant Real u=1e-6 "micro";
    final constant Real n=1e-9 "nano";
    final constant Real p=1e-12 "pico";
    final constant Real f=1e-15 "femto";
    final constant Real a=1e-18 "atto";
    final constant Real z=1e-21 "zepto";
    final constant Real y=1e-24 "yocto";

  end Prefixes;

  // -------------------------------------------------------------------------
  // Mathematical constants
  // -------------------------------------------------------------------------

  final constant Q.Number pi=2*acos(0) "<html>pi (<i>&pi;</i>)</html>";

  // TODO: Check all dimensions against natu.

  // -------------------------------------------------------------------------
  // Base physical constants
  // -------------------------------------------------------------------------
  replaceable constant Bases.SIKmol base constrainedby Bases.Base
    "Scalable base constants";
  constant Q.Wavenumber R_inf=base.R_inf
    "<html><a href=http://en.wikipedia.org/wiki/Rydberg_constant>Rydberg constant</a> (<i>R</i><sub>&infin;</sub>)</html>";
  constant Q.Velocity c=base.c
    "<html><a href=http://en.wikipedia.org/wiki/Speed_of_light>speed of light</a></html>";
  // aka Planck, Stoney, or natural unit of velocity
  constant Q.MagneticFluxReciprocal k_J=base.k_J
    "<html><a href=http://en.wikipedia.org/wiki/Josephson_constant>Josephson constant</a> (<i>k</i><sub>J</sub>)</html>";
  constant Q.MagneticFluxSpecific R_K=base.R_K
    "<html><a href=http://en.wikipedia.org/wiki/Von_Klitzing_constant>von Klitzing constant</a> (<i>R</i><sub>K</sub>)</html>";
  constant Q.Number k_F=base.k_F
    "<html><a href=http://en.wikipedia.org/wiki/Faraday_constant>Faraday constant</a> (<i>k</i><sub>F</sub>)</html>";
  constant Q.Number R=base.R
    "<html><a href=http://en.wikipedia.org/wiki/Gas_constant>gas constant</a></html>";
  constant Q.LengthSpecificMassSpecific k_Aprime=base.k_Aprime
    "<html>modified Ampere constant (<i>k</i><sub>A</sub> cyc/&alpha;)</html>";

  // -------------------------------------------------------------------------
  // Derived physical constants
  // -------------------------------------------------------------------------
  // Note:  These are established by definition, but may include
  // transcendental mathematical factors.

  final constant Q.MagneticFlux Phi_0=1/k_J
    "<html><a href=http://en.wikipedia.org/wiki/Magnetic_flux_quantum>magnetic flux quantum</a> (&Phi;<sub>0</sub>)</html>";
  final constant Q.ConductanceElectrical G_0=2/R_K
    "<html><a href=http://en.wikipedia.org/wiki/Conductance_quantum>conductance quantum</a> (<i>G</i><sub>0</sub>)</html>";
  final constant Q.Amount e=G_0*Phi_0
    "<html><a href=http://en.wikipedia.org/wiki/Elementary_charge>elementary charge</html>";
  final constant Q.MomentumRotational h=2*e*Phi_0
    "<html><a href=http://en.wikipedia.org/wiki/Planck_constant>Planck constant</html>";
  final constant Q.AmountReciprocal N_A=k_F/e
    "<html><a href=http://en.wikipedia.org/wiki/Avogadro_number>Avogadro constant</a> (<i>N</i><sub>A</sub>)</html>";
  final constant Q.Amount k_B=R/N_A
    "<html><a href=http://en.wikipedia.org/wiki/Boltzmann_constant>Boltzmann constant</a> (<i>k</i><sub>B</sub>)</html>";
  final constant Q.Angle cyc=k_Aprime*c/R_K "cycle";
  // aka circle, revolution, turn (a unit--not a constant--but useful here)
  final constant Q.PowerArea c_1=2*pi*h*c^2/cyc^3
    "<html><a href=http://physics.nist.gov/cgi-bin/cuu/Value?c11strc>first radiation constant</a> (<i>c</i><sub>1</sub>)</html>";
  // Note:  The factor of cyc is included to be explicit in angle.
  final constant Q.PotentialPerWavenumber c_2=h*c/k_B
    "<html><a href=http://physics.nist.gov/cgi-bin/cuu/Value?c22ndrc>second radiation constant</a> (<i>c</i><sub>2</sub>)</html>";
  final constant Q.MagneticFluxReciprocal c_3_f=2.821439372122079*c/c_2
    "<html><a href=http://en.wikipedia.org/wiki/Wien's_displacement_law>Wien frequency displacement constant</a> (<i>c</i><sub>3 <i>f</i></sub>)</html>";
  // The Wien displacement constant can be derived by setting the derivative
  // of Planck's law to zero and solving for h*f/(k_B*T) in order to find the
  // frequency at maximum radiant intensity.  That procedure results in
  // solving the following equation: exp(x)*(3 - x) = 3, where x is h*f/k_B.
  // The number above (2.821...) is Mathematica's solution
  // (QCalc/Resources/Documentation/QCalc/math-constants.cdf).
  final constant Q.PotentialPerWavenumber c_3_lambda=c_2/4.965114231744276
    "<html><a href=http://en.wikipedia.org/wiki/Wien's_displacement_law>Wien wavelength displacement constant</a> (<i>c</i><sub>3 &lambda;</sub>)</html>";
  // See the notes for c_3_nu below.  The derivation is similar, but the
  // number is the solution to exp(x)*(5 - x) = 5.  Note that the frequency
  // displacement constant isn't directly related to the wavelength
  // displacement constant "[b]ecause the spectrum resulting from Planck's law
  // of black body radiation takes a different shape in the frequency domain
  // from that of the wavelength domain."
  // [http://en.wikipedia.org/wiki/Wien's_displacement_law, accessed
  // 1/19/10].
  final constant Q.PowerAreicPerPotential4 sigma=c_1/15*(pi/c_2)^4
    "<html><a href=http://en.wikipedia.org/wiki/Stefan%E2%80%93Boltzmann_constant>Stefan-Boltzmann constant</a> (&sigma;)</html>";
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
    "<html><a href=http://en.wikipedia.org/wiki/Rydberg_constant#Value_of_the_Rydberg_constant_and_Rydberg_unit_of_energy>Rydberg energy</a></html>";
  final constant Q.Energy Ha=2*Ry
    "<html><a href=http://en.wikipedia.org/wiki/Hartree>Hartree energy</a></html>";
  final constant Q.Temperature T_H=Ha/k_B
    "<html>Hartree temperature (<i>T</i><sub>H</sub>)</html>";

  // -------------------------------------------------------------------------
  // SI mathematical relations
  // -------------------------------------------------------------------------
  final constant Q.Angle rad=cyc/(2*pi)
    "<html><a href=http://en.wikipedia.org/wiki/Rad_(unit)>radian</a></html>";
  // Note:  [BIPM2006] defines rad = 1, but this trigonometric relation is
  // used instead, where the cycle (cyc) is an independent base unit.

  // -------------------------------------------------------------------------
  // SI empirical relations
  // -------------------------------------------------------------------------
  constant Q.Length m=10973731.568539*cyc/R_inf
    "<html><a href=http://en.wikipedia.org/wiki/Metre>metre</a></html>";
  // This is the "Rydberg constant" relation [NIST2010] with the unit cycle
  // explicitly included in the wavenumber.  The Rydberg constant can be
  // determined by measuring the spectra of hydrogen, deuterium, and
  // antiprotonic helium [http://en.wikipedia.org/wiki/Rydberg_constant].
  constant Q.Time s=299792458*m/c
    "<html><a href=http://en.wikipedia.org/wiki/Second>second</a></html>";
  // This is the "speed of light in vacuum" relation [NIST2010].  One way that
  // the speed of light can be determined is by measuring the time for
  // electromagnetic waves to travel to and from spacecraft
  // [https://en.wikipedia.org/wiki/Speed_of_light#Astronomical_measurements].
  constant Q.MagneticFlux Wb=483597.870e9/k_J
    "<html><a href=http://en.wikipedia.org/wiki/Weber_(unit)>weber</a></html>";
  // This is the based on the "Josephson constant" relation [NIST2010].  The
  // Josephson constant can be determined by measuring supercurrent across a
  // Josephson junction [http://en.wikipedia.org/wiki/Josephson_effect].
  constant Q.ConductanceElectrical S=25812.8074434/(R_K*cyc)
    "<html><a href=http://en.wikipedia.org/wiki/Siemens_(unit)>siemens</a></html>";
  // SI unit of electrical conductance
  // This is based on the "von Klitzing constant" relation [NIST2010], given
  // that the siemens is the reciprocal of the ohm.  The von Klitzing constant
  // can be determined by measuring the quantum hall effect
  // [http://en.wikipedia.org/wiki/Quantum_Hall_effect].
  constant Q.Amount mol=96485.3365*Wb*cyc*S/k_F
    "<html><a href=http://en.wikipedia.org/wiki/Mole_(unit)>mole</a></html>";
  // This is the "Faraday constant" relation [NIST2010].  The factor of
  // Wb*cyc*S is the coulomb, which is defined below.  The Faraday constant
  // can be determined by electrochemical experiments relating the charge and
  // the chemical amount involved in a reaction.
  constant Q.Potential K=8.3144621*(Wb*cyc)^2*S/(s*mol*R)
    "<html><a href=http://en.wikipedia.org/wiki/Kelvin>kelvin</a></html>";
  // This is the "molar gas constant" relation [NIST2010].  The factor of
  // (Wb*cyc)^2*S/s is the joule, which is defined below.  The gas consant can
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
    "<html><a href=http://en.wikipedia.org/wiki/Candela>candela</a></html>";

  // -------------------------------------------------------------------------
  // SI base units [BIPM2006, Table 1] and intermediate units
  // -------------------------------------------------------------------------
  // Note:  Only A and kg remain (m, s, K, mol, and cd defined above).
  final constant Q.Frequency Hz=cyc/s
    "<html><a href=http://en.wikipedia.org/wiki/Hertz>hertz</a></html>";
  // Note:  [BIPM2006] defines Hz = 1/s, but that conflicts with the common
  // definition of the hertz as "one cycle per second"
  // [https://en.wikipedia.org/wiki/Hertz].  Since BIPM defines rad = 1 and
  // trigonometry requires cyc = 2*pi*rad (see above), BIPM implies that
  // Hz = cyc/(2*pi*s) -- an inconsistency.
  final constant Q.Potential V=Wb*Hz
    "<html><a href=http://en.wikipedia.org/wiki/Volt>volt</a></html>";
  // Note:  [BIPM2006] defines Wb = V*s, but Wb = V/Hz is used here (which is
  // different, see above) to be explicit in angle.
  final constant Q.Current A=V*S
    "<html><a href=http://en.wikipedia.org/wiki/Ampere>ampere</a></html>";
  final constant Q.Amount C=A*s
    "<html><a href=http://en.wikipedia.org/wiki/Coulomb>coulomb</a></html>";
  final constant Q.Energy J=V*C
    "<html><a href=http://en.wikipedia.org/wiki/Joule>joule</a></html>";
  final constant Q.Velocity2 Gy=(m/s)^2
    "<html><a href=http://en.wikipedia.org/wiki/Gray_unit>gray</a></html>";
  final constant Q.Mass kg=J/Gy
    "<html><a href=http://en.wikipedia.org/wiki/Kilogram>kilogram</a></html>";
  final constant Q.Mass g=kg/Prefixes.k
    "<html><a href=http://en.wikipedia.org/wiki/Gram>gram</a></html>";
  // The base SI unit of mass (kg) includes a prefix.  See section 3.2 of
  // [BIPM2006].

  // -------------------------------------------------------------------------
  // SI derived units with special names and symbols [BIPM2006, Table 3]
  // -------------------------------------------------------------------------
  // Note:  rad, sr, Hz, Wb, S, V, C, J, lm, and Gy have already been defined.
  final constant Q.Angle2 sr=rad^2
    "<html><a href=http://en.wikipedia.org/wiki/Steradian>steradian</a></html>";
  // Note: [BIPM2006] defines sr = 1, which is consistent with the common
  // definition of the steradian as the square of the radian (rad)
  // [https://en.wikipedia.org/wiki/Steradian] only because [BIPM2006] defines
  // rad = 1.  Here, the common definition is applied directly.
  final constant Q.Illuminance lm=cd*sr
    "<html><a href=http://en.wikipedia.org/wiki/Lumen_(unit)>lumen</a></html>";
  final constant Q.Power W=J/s
    "<html><a href=http://en.wikipedia.org/wiki/Watt>watt</a></html>";
  final constant Q.Force N=J/m
    "<html><a href=http://en.wikipedia.org/wiki/Newton_unit>newton</a></html>";
  final constant Q.Pressure Pa=N/m^2
    "<html><a href=http://en.wikipedia.org/wiki/Pascal_(unit)>pascal</a></html>";
  final constant Q.MagneticFluxAreic T=Wb/m^2
    "<html><a href=http://en.wikipedia.org/wiki/Tesla_(unit)>tesla</a></html>";
  final constant Q.LuminousEmittance lx=lm/m^2
    "<html><a href=http://en.wikipedia.org/wiki/Lux>lux</a></html>";
  final constant Q.Capacitance F=s*S
    "<html><a href=http://en.wikipedia.org/wiki/Farad>farad</a></html>";
  final constant Q.ResistanceElectrical ohm=1/S
    "<html><html><a href=http://en.wikipedia.org/wiki/Ohm>ohm</a> (&Omega;)</html>";
  final constant Q.Inductance H=s/S
    "<html><a href=http://en.wikipedia.org/wiki/Henry_(unit)>henry</a></html>";
  // Note:  The definition in [BIPM2006], H = Wb/A, is not valid here because
  // angle is included explicitly in magnetic flux (i.e., Wb = V/Hz = V*s/cyc,
  // not Wb = V*s).
  final constant Q.Current kat=mol/s
    "<html><a href=http://en.wikipedia.org/wiki/Katal>katal</a></html>";
  final constant Q.Velocity2 Sv=Gy
    "<html><a href=http://en.wikipedia.org/wiki/Sievert>sievert</a></html>";
  final constant Q.TimeReciprocal Bq=1/s
    "<html><a href=http://en.wikipedia.org/wiki/Becquerel>becquerel</a></html>";

  record degC
    "<html><a href=http://en.wikipedia.org/wiki/Celsius>degree Celsius</a> (&deg;C)</html>"
    extends Interfaces.NonscalarUnit;

    function extends num2qty
      "Convert from temperature in Celsius to temperature as a quantity"
      extends Icons.Function;

      input Real T_degC "Temperature in degree Celsius";
      output Q.TemperatureAbsolute T "Thermodynamic temperature";

    algorithm
      T := (T_degC + 273.15)*K;
      annotation (Inline=true, inverse(T_degC=qty2num(T)));
    end num2qty;

    function extends qty2num
      "Convert from temperature as a quantity to temperature in Celsius"
      extends Icons.Function;

      input Q.TemperatureAbsolute T "Thermodynamic temperature";
      output Real T_degC "Temperature in degree Celsius";

    algorithm
      T_degC := T/K - 273.15;
      annotation (Inline=true, inverse(T=num2qty(T_degC)));
    end qty2num;

  end degC;

  // -------------------------------------------------------------------------
  // Non-SI units accepted for use with SI units [BIPM2006, Table 6]
  // -------------------------------------------------------------------------
  final constant Q.Time min=60*s
    "<html><a href=http://en.wikipedia.org/wiki/Minute>minute</a></html>";
  final constant Q.Time hr=60*min
    "<html><a href=http://en.wikipedia.org/wiki/Hour>hour</a></html>";
  final constant Q.Time d=24*hr
    "<html><a href=http://en.wikipedia.org/wiki/Day>day</a></html>";
  final constant Q.Angle deg=cyc/360
    "<html><a href=http://en.wikipedia.org/wiki/Degree_(angle)>degree</a> (&deg;)</html>";
  final constant Q.Angle arcmin=deg/60
    "<html><a href=http://en.wikipedia.org/wiki/Arcminute>arcminute</a></html>";
  final constant Q.Angle arcsec=arcmin/60
    "<html><a href=http://en.wikipedia.org/wiki/Arcsecond>arcsecond</a></html>";
  final constant Q.Area ha=(Prefixes.h*m)^2
    "<html><a href=http://en.wikipedia.org/wiki/Hectare>hectare</a></html>";
  final constant Q.Volume L=(Prefixes.d*m)^3
    "<html><a href=http://en.wikipedia.org/wiki/Litre>litre</a> (L or l)</html>";
  final constant Q.Mass t=Prefixes.M*g
    "<html><a href=http://en.wikipedia.org/wiki/Tonne>tonne</a></html>";

  // -------------------------------------------------------------------------
  // Other non-SI units [BIPM2006, Table 8]
  // -------------------------------------------------------------------------
  final constant Q.Acceleration g_0=9.80665*m/s^2
    "<html><a href=http://en.wikipedia.org/wiki/Standard_gravity>standard gravity</a></html>";
  // (a constant--not a unit)
  // Not defined in [BIPM2006] but useful here
  final constant Q.Length cm=Prefixes.c*m
    "<html><a href=http://en.wikipedia.org/wiki/Centimetre>centimetre</a></html>";
  // Not defined in [BIPM2006] but useful here
  final constant Q.Volume cc=cm^3
    "<html><a href=http://en.wikipedia.org/wiki/Cubic_centimeter>cubic centimeter</a></html>";
  // Not defined in [BIPM2006] but useful here
  final constant Q.PressureLineic Hg=13.5951*g*g_0/cc
    "<html>force per volume of <a href=http://en.wikipedia.org/wiki/Mercury_(element)>mercury</a> under <a href=http://en.wikipedia.org/wiki/Standard_gravity>standard gravity</a></html>";
  // Not defined in [BIPM2006] but useful here
  final constant Q.Length mm=Prefixes.m*m
    "<html><a href=https://en.wikipedia.org/wiki/Millimetre>millimetre</a></html>";
  // Not in Table 8 but useful for the definition below
  final constant Q.Pressure mmHg=mm*Hg
    "<html><a href=http://en.wikipedia.org/wiki/Millimeter_of_mercury>millimeter of mercury</a></html>";
  final constant Q.Pressure kPa=Prefixes.k*Pa "kilopascal";
  // Not defined in [BIPM2006] but useful here
  final constant Q.Pressure bar=100*kPa
    "<html><a href=http://en.wikipedia.org/wiki/Bar_(unit)>bar</a></html>";
  final constant Q.Area b=100*(Prefixes.f*m)^2
    "<html><a href=http://en.wikipedia.org/wiki/Barn_(unit)>barn</a></html>";
  final constant Q.Length angstrom=1e-10*m
    "<html><html><a href=http://en.wikipedia.org/wiki/Angstrom>angstrom</a> (&#8491;)</html>";
  final constant Q.Length nmi=1852*m
    "<html><a href=http://en.wikipedia.org/wiki/Nautical_mile>nautical mile</a></html>";
  final constant Q.Velocity kn=nmi/hr
    "<html><a href=http://en.wikipedia.org/wiki/Knot_(unit)>knot</a></html>";

  record Np
    "<html><a href=http://en.wikipedia.org/wiki/Neper>neper</a> (in terms of amplitude ratio, not power ratio)</a></html>"
    extends Interfaces.NonscalarUnit;

    function extends num2qty "Convert from a number to a quantity"
      extends Icons.Function;

      input Real x_Np "Amplitude ratio in nepers";
      output Q.Number x "Amplitude ratio";

    algorithm
      x := exp(x_Np);
      annotation (Inline=true, inverse(x_Np=qty2num(x)));
    end num2qty;

    function extends qty2num "Convert from a quantity to a number"
      extends Icons.Function;

      input Q.Number x "Amplitude ratio";
      output Real x_Np "Amplitude ratio in nepers";

    algorithm
      x_Np := log(x);
      annotation (Inline=true, inverse(x=num2qty(x_Np)));
    end qty2num;

  end Np;

  record B "bel (in terms of power ratio, not amplitude ratio)"
    extends Interfaces.NonscalarUnit;

    function extends num2qty "Convert from a number to a quantity"
      extends Icons.Function;

      input Real x_B "Power ratio in bels";
      output Q.Number x "Power ratio";

    algorithm
      x := 10^x_B;
      annotation (Inline=true, inverse(x_B=qty2num(x)));
    end num2qty;

    function extends qty2num "Convert from a quantity to a number"
      extends Icons.Function;

      input Q.Number x "Power ratio";
      output Real x_B "Power ratio in bels";

    algorithm
      x_B := log10(x);
      annotation (Inline=true, inverse(x=num2qty(x_B)));
    end qty2num;
  end B;

  record dB
    "<html><a href=http://en.wikipedia.org/wiki/Decibel>decibel</a> (in terms of power ratio, not amplitude ratio)</html>"
    extends Interfaces.NonscalarUnit;

    function extends num2qty "Convert from a number to a quantity"
      extends Icons.Function;

      input Real x_dB "Power ratio in decibels";
      output Q.Number x "Power ratio";

    algorithm
      x := 10^(Prefixes.d*x_dB);
      annotation (Inline=true, inverse(x_dB=qty2num(x)));
    end num2qty;

    function extends qty2num "Convert from a quantity to a number"
      extends Icons.Function;

      input Q.Number x "Power ratio";
      output Real x_dB "Power ratio in decibels";

    algorithm
      x_dB := log10(x)/Prefixes.d;
      annotation (Inline=true, inverse(x=num2qty(x_dB)));
    end qty2num;
  end dB;

  // -------------------------------------------------------------------------
  // Non-SI units associated with the CGS and the CGS-Gaussian system of units
  // [BIPM2006, Table 9]
  final constant Q.Acceleration Gal=cm/s^2
    "<html><a href=http://en.wikipedia.org/wiki/Gal_(unit)>gal</a></html>";
  final constant Q.Force dyn=g*Gal
    "<html><a href=http://en.wikipedia.org/wiki/Dyne>dyne</a></html>";
  final constant Q.Energy erg=dyn*cm
    "<html><a href=http://en.wikipedia.org/wiki/Erg>erg</a></html>";
  final constant Q.Pressure Ba=dyn/cm^2
    "<html><a href=http://en.wikipedia.org/wiki/Barye>barye</a></html>";
  // aka barad, barrie, bary, baryd, baryed, or barie
  // Not in [BIPM2006] but useful here
  final constant Q.Viscosity P=Ba*s
    "<html><a href=http://en.wikipedia.org/wiki/Poise>poise</a></html>";
  final constant Q.Diffusivity St=cm^2/s
    "<html><a href=http://en.wikipedia.org/wiki/Stokes_(unit)>stokes</a></html>";
  // aka stoke
  final constant Q.Luminance sb=cd/cm^2
    "<html><a href=http://en.wikipedia.org/wiki/Stilb_(unit)>stilb</a></html>";
  final constant Q.Illuminance ph=sb*sr
    "<html><a href=http://en.wikipedia.org/wiki/Phot>phot</a></html>";
  final constant Q.Current abA=Prefixes.da*A
    "<html><a href=https://en.wikipedia.org/wiki/Abampere>abampere</a></html>";
  // aka decaampere or Biot (Bi)
  // Not in [BIPM2006] but useful here
  final constant Q.Amount abC=abA*s
    "<html><a href=https://en.wikipedia.org/wiki/Abcoulomb>abcoloumb</a></html>";
  // Not in [BIPM2006] but useful here
  final constant Q.Potential abV=erg/abC
    "<html><a href=https://en.wikipedia.org/wiki/Abvolt>abvolt</a></html>";
  // Not in [BIPM2006] but useful here
  final constant Q.MagneticFlux Mx=erg/(abA*cyc)
    "<html><a href=http://en.wikipedia.org/wiki/Maxwell_(unit)>maxwell</a></html>";
  final constant Q.MagneticFluxAreic Gs=Mx/cm^2
    "<html><a href=http://en.wikipedia.org/wiki/Gauss_(unit)>gauss</a></html>";
  final constant Q.MagneticFlux pole=4*pi*Mx "unit pole";
  // Not in [BIPM2006] but useful here
  final constant Q.MagneticFieldAux Oe=dyn/pole
    "<html><a href=http://en.wikipedia.org/wiki/Oersted>oersted</a></html>";
  // Others not in [BIPM2006]:
  final constant Q.Capacitance abF=abC/abV
    "<html><a href=https://en.wikipedia.org/wiki/Abfarad#CGS_units>abfarad</a></html>";
  final constant Q.ResistanceElectrical abohm=s/abF
    "<html><a href=https://en.wikipedia.org/wiki/Abohm>abohm</a></html>";
  final constant Q.Inductance abH=abohm*s
    "<html><a href=http://en.wikipedia.org/wiki/Abhenry>abhenry</a></html>";

  // -------------------------------------------------------------------------
  // Constants related to Ampere's force law
  // -------------------------------------------------------------------------
  constant Q.LengthSpecificMassSpecific k_A=dyn/abA^2
    "<html>Ampere constant (<i>k</i><sub>A</sub>)</html>";
  constant Q.PermittivityReciprocal k_C=k_A*c^2
    "<html><a href=https://en.wikipedia.org/wiki/Coulomb_constant>Coulomb constant</a> (<i>k</i><sub>C</sub>)</html>";
  final constant Q.Permittivity epsilon_0=1/(k_C*(if base.rational then 4*pi
       else 1))
    "<html><a href=http://en.wikipedia.org/wiki/Vacuum_permittivity>electric constant</a> (&epsilon;<sub>0</sub>)</html>";
  // aka vacuum permittivity or permittivity of free space
  final constant Q.Permeability mu_0=1/(epsilon_0*sr*c^2)
    "<html><a href=http://en.wikipedia.org/wiki/Vacuum_permeability>magnetic constant</a> (&mu;<sub>0</sub>)</html>";
  // aka vacuum permeability or permeability of free space
  final constant Q.ResistanceElectrical Z_0=2*k_A*c/rad
    "<html><a href=http://en.wikipedia.org/wiki/Impedance_of_free_space>characteristic impedance of vacuum</a> (<i>Z</i><sub>0</sub>)</html>";
  final constant Q.Angle alpha=k_A*c/R_K
    "<html><a href=http://en.wikipedia.org/wiki/Fine_structure_constant>fine-structure constant</a> (&alpha;)</html>";
  final constant Q.Length a_0=alpha/(2*R_inf)
    "<html><a href = https://en.wikipedia.org/wiki/Bohr_radius>Bohr radius</a> (<i>a</i><sub>0</sub>)</html>";
  // aka Hartree length
  final constant Q.Wavelength lambda_e=alpha*a_0/sr
    "<html>electron <a href=https://en.wikipedia.org/wiki/Compton_wavelength>Compton wavelength</a> (&lambda;<sub>e</sub>)</html>";
  final constant Q.WavelengthVelocity kappa=lambda_e*c/2
    "<html>quantum of circulation (&kappa;)</html>";
  final constant Q.MassSpecific m_e=Phi_0/kappa
    "<html><a href=http://en.wikipedia.org/wiki/Electron_mass>specific electron rest mass</a> (<i>m</i><sub>e</sub>)</html>";
  final constant Q.LengthSpecific r_e=k_A/m_e
    "<html><a href=http://en.wikipedia.org/wiki/Classical_electron_radius>specific classical electron radius</a> (<i>r</i><sub>e</sub>)</html>";
  // aka specific Lorentz radius or specific Thomson scattering length
  final constant Q.MagneticDipoleMoment mu_B=kappa*e*sp/2
    "<html><a href=https://en.wikipedia.org/wiki/Bohr_magneton>Bohr magnetron</a></html>";
  final constant Q.Mass M_e=m_e*e
    "<html>mass of an electron (<i>M</i><sub>e</sub>)</html>";
  // aka Hartree mass or natural unit of mass
  final constant Q.Time t_H=a_0*sqrt(M_e/Ha)
    "<html>Hartree time (<i>t</i><sub>H</sub>)</html>";
  final constant Q.Length l_n=h*rad/(M_e*c)
    "<html>natural unit of length(<i>l</i><sub>n</sub>)</html>";
  final constant Q.Time t_n=l_n/c
    "<html>natural unit of time(<i>t</i><sub>n</sub>)</html>";

  // -------------------------------------------------------------------------
  // Other
  // -------------------------------------------------------------------------
  final constant Q.Time y=365.25*d
    "<html><a href=http://en.wikipedia.org/wiki/Julian_year_(astronomy)>Julian year</a></html>";
  final constant Q.Length ly=c*y
    "<html><a href=http://en.wikipedia.org/wiki/Light_year>light year</a></html>";
  final constant Q.Length au=149597870700*m
    "<html><a href=http://en.wikipedia.org/wiki/Astronomical_unit>astronomical unit</a></html>";
  final constant Q.Length pc=au*648e3/pi
    "<html><a href=http://en.wikipedia.org/wiki/Parsec>parsec</a></html>";
  final constant Q.Pressure atm=101325*Pa
    "<html><a href=http://en.wikipedia.org/wiki/Atmosphere_(unit)>atmosphere</a></html>";
  // Value from "standard atmosphere" [NIST2010]
  final constant Q.Pressure Torr=atm/760
    "<html><a href=http://en.wikipedia.org/wiki/Torr>torr</a></html>";
  final constant Q.Energy Wh=W*h
    "<html><a href=http://en.wikipedia.org/wiki/Watt_hour>watt hour</a></html>";
  final constant Q.Energy eV=e*V
    "<html><a href=http://en.wikipedia.org/wiki/Electron_volt>electron volt</a></html>";
  final constant Q.Angle2 sp=4*pi*sr
    "<html><a href=http://en.wikipedia.org/wiki/Spat_(unit)>spat</a></html>";
  final constant Q.Frequency rpm=cyc/min
    "<html><a href=http://en.wikipedia.org/wiki/Revolutions_per_minute>revolution per minute</a></html>";
  final constant Q.Number '%'=Prefixes.c
    "<html><a href=http://en.wikipedia.org/wiki/Percent>percent</a> (%)</html>";
  final constant Q.MagnetomotiveForce AT=A*cyc
    "<html><a href=http://en.wikipedia.org/wiki/Ampere-turn>ampere-turn</a></html>";
  final constant Q.Area D=Prefixes.c*dyn/atm
    "<html><a href=http://en.wikipedia.org/wiki/Darcy_(unit)>darcy</a></html>";
  final constant Q.Mass u=g/(N_A*mol)
    "<html><a href=https://en.wikipedia.org/wiki/Atomic_mass_unit>unified atomic mass unit</a></html>";
  // aka dalton (Da)
  final constant Q.Density M=mol/L
    "<html><a href=http://en.wikipedia.org/wiki/Molar_concentration#Units>molar</a></html>";

  record kPag "kilopascal, gauge"
    extends Interfaces.NonscalarUnit;

    function extends num2qty
      "Convert from gauge pressure in kilopascals to absolute pressure as a quantity"
      extends Icons.Function;

      input Real p_kPag "Gauge pressure in kilopascals";
      output Q.PressureAbsolute p "Absolute pressure";

    algorithm
      p := p_kPag*kPa + atm;
      annotation (Inline=true, inverse(p_kPag=qty2num(p)));
    end num2qty;

    function extends qty2num
      "Convert from absolute pressure as a quantity to gauge pressure in kilopascals"
      extends Icons.Function;

      input Q.PressureAbsolute p "Absolute pressure";
      output Real p_kPag "Gauge pressure in kilopascals";

    algorithm
      p_kPag := (p - atm)/kPa;
      annotation (Inline=true, inverse(p=num2qty(p_kPag)));
    end qty2num;
  end kPag;

  package Interfaces "Partial classes"
    extends Icons.InterfacesPackage;

    record NonscalarUnit "Partial record for a nonscalar unit"

      partial function num2qty "Convert a number to a quantity"
        extends Icons.Function;

      end num2qty;

      function qty2num "Convert a quantity to a number"
        extends Icons.Function;

      end qty2num;

      annotation (Icon(graphics={
            Text(
              extent={{-115,155},{115,105}},
              textString="%name",
              lineColor={0,0,255}),
            Rectangle(
              extent={{-100,100},{100,-100}},
              lineColor={0,0,0},
              fillColor={215,230,240},
              fillPattern=FillPattern.Solid),
            Text(
              extent={{-94,94},{94,-94}},
              lineColor={0,0,0},
              fillColor={181,181,181},
              fillPattern=FillPattern.Solid,
              textString="U")}));
    end NonscalarUnit;
  end Interfaces;

  annotation (
    Documentation(info="<html>  
<p>The information below has been updated and adapted from 
[<a href=\"modelica://QCalc.UsersGuide.Publications.Davies2012b\">Davies2012b</a>].  
That paper also offers suggestions as to how the approach might be 
better integrated in the <a href=\"http://www.modelica.org\">Modelica 
language</a>.  For more information, please also see the documentation 
of the <a href=\"modelica://QCalc.Quantities\">Quantities</a> package.</p>

<p><b>Introduction:</b></p>

<p>Mathematical models of physical systems use variables to represent 
physical quantities. As stated by the Bureau International des Poids et 
Mesures (BIPM) [<a href=\"modelica://QCalc.UsersGuide.References.BIPM2006\">BIPM2006</a>, 
p.&nbsp;103]:</p> <blockquote> \"The value of a quantity 
is generally expressed as the product of a number and a unit.  The unit 
is simply a particular example of the quantity concerned which is used as 
a reference, and the number is the ratio of the value of the quantity to 
the unit.\" </blockquote> <p>In general, a unit may be the product of 
other units, whether they are base units or units derived from the base 
units in the same manner.</p>

<p>In <a href=\"http://www.modelica.org\">Modelica</a>, a physical 
quantity is represented by a variable which is an instance of the 
<code>Real</code> type.  Its <code>value</code> attribute is a number 
associated with the value of the quantity (not the value of the quantity 
itself, as will be shown).  Usually the <code>value</code> attribute is 
not referenced explicitly because it is automatically returned when the 
variable itself is referenced. The <code>unit</code> attribute is a string that 
describes the unit by which the value of the quantity has been divided to 
arrive at the number.  The <code>displayUnit</code> attribute (also a 
string) describes the unit by which the value of the quantity should be 
divided to arrive at the number as it is entered by or presented to the 
user.  The <code>Real</code> type contains other attributes as well, 
including the <code>quantity</code> string.</p>

<p>The <a href=\"modelica://Modelica.SIunits\">SIunits</a> package of the 
<a href=\"modelica://Modelica\">Modelica Standard Library</a> contains 
types that extend from the <code>Real</code> type.  The type definitions 
modify the <code>unit</code>, <code>displayUnit</code>, and 
<code>quantity</code> attributes (among others) to represent various 
physical quantities.  The <code>unit</code> and <code>displayUnit</code> 
attributes are based on the International System of Units (Syst&egrave;me 
international d'unit&eacute;s, SI). The <code>quantity</code> string is 
the name of the physical quantity.  For example, the 
<a href=\"modelica://Modelica.SIunits.Velocity\">Velocity</a>  type has a 
<code>unit</code> of \"m/s\" and a <code>quantity</code> of \"Velocity\".  
If an instance of <a href=\"modelica://Modelica.SIunits.Velocity\">Velocity</a> 
has a <code>value</code> of one (<i>v</i> = 1), then it is 
meant that \"the value of velocity is one meter per second.\"  Again, the 
<code>value</code> attribute represents the number, or the value of the 
quantity divided by the unit, not the value of the quantity itself.</p>

<p>This conflict is solved in <a href=\"modelica://Units\">Units</a> 
by establishing units as mathematical entities and writing 
<i>v</i> = 1&nbsp;m/s (in code, <code>v = 1*U.m/U.s</code> or simply 
<code>v = U.m/U.s</code>, where <code>U</code> is an abbreviation for this 
package). Here, the variable <i>v</i> directly represents the quantity. 
Its <code>value</code> attribute is truly the value of the quantity in the 
context of the statement by BIPM (above). One advantage is that unit 
conversion is handled naturally.  The essence of unit conversion is the 
phrase \"value of a quantity in a unit\" typically means \"value of a 
quantity divided by a unit.\"  Continuing with the previous example, 
<i>v</i> is divided by m/s in order to display <i>v</i> in meters per 
second (as a number).  If another unit of length like the foot is 
established by the appropriate relation (ft &asymp; 0.3048&nbsp;m) and 
<i>v</i> is divided by ft/s, the result is velocity in feet per second 
(&sim;3.2894).  Some units such as &deg;C, Pag, and dB involve offsets or 
nonlinear transformations between the value of the quantity and the 
number; these are described by functions besides simple division.</p>

<p><b>Method:</b></p>

<p>In <a href=\"modelica://Units\">Units</a>, each unit is a constant 
quantity. The values of the units, like other quantities, is the product 
of a number and a unit. Therefore, units may be derived from other units 
(e.g., cyc = 2&pi;&nbsp;rad). This recursive definition leaves several 
units (in SI, 7) that are locally independent and must be established 
universally.  These base units are established by the \"particular example 
of the quantity concerned which is used as a reference\" quoted previously 
[<a href=\"modelica://QCalc.UsersGuide.References.BIPM2006\">BIPM2006</a>].  
The choice of the base units is somewhat arbitrary [<a 
href=\"modelica://QCalc.UsersGuide.References.Fritzson2004\">Fritzson2004</a>, 
p.&nbsp;375], but regardless, there are a number of 
units that must be defined by example.</p> 

<p>If only SI will be used, then it is easiest to set each of the base 
units of SI equal to one&mdash;the meter (m), kilogram (kg), second (s), 
ampere (A), kelvin (K), mole (mol), and candela (cd).  This is implicitly 
the case in the <a href=\"modelica://Modelica.SIunits\">SIunits</a> 
package, but again, it hardly captures the idea that the value of a 
quantity is the product of a number and a unit.</p>

<p>Instead, in <a href=\"modelica://Units\">Units</a>, the base units are 
established by universal physical constants (except the unit cycle, which 
is physically arbitrary). The \"particular example of the quantity\" 
[<a href=\"modelica://QCalc.UsersGuide.References.BIPM2006\">BIPM2006</a>] is 
an experiment that yields precise and universally repeatable results in 
determining a constant rather than a prototype (e.g., the International 
Prototype of the Kilogram) which is carefully controlled and distributed 
via replicas. This method of defining the base units from measured 
physical quantities (rather than vice versa) is natural and reflects the 
way that standards organizations (e.g., <a href=\"http://www.nist.gov/\">NIST</a>) 
define units. A system of units is considered to be natural if 
all of its base units are established by universal physical constants. 
Often, those universal constants are defined to be equal to one, but the 
values can be chosen to scale the numerical values of variables during 
simulation.</p>

<p>There are physical systems where typical quantities are many orders of 
magnitude larger or smaller than the related product of powers of base SI 
units (e.g., the domains of astrophysics and atomic physics).  In modeling 
and simulating those systems, it may be advantageous to choose 
appropriately small or large values (respectively) for the corresponding 
base units so that the product of the number (large or small in magnitude) 
and the unit (small or large, respectively) is well-scaled.  Products of 
this type are often involved in initial conditions or parameter 
expressions, which are not time-varying.  Therefore, the number and the 
unit can be multiplied before the dynamic simulation.  During the 
simulation, only the value is important.  After the simulation, the 
trajectory of the value may be divided by the unit for display.  This 
scaling is usually unnecessary due to the wide range and appropriate 
distribution of the real numbers that are representable in floating 
point.  The Modelica language specification recommends that floating point 
numbers be represented in at least IEEE double precision, which covers 
magnitudes from &sim;2.225&times;10<sup>-308</sup> to 
&sim;1.798&times;10<sup>308</sup> [<a href=\"modelica://QCalc.UsersGuide.References.Modelica2010\">Modelica2010</a>,
 p.&nbsp;13]. However, in some cases it may be preferable to scale the 
units and use lower precision for the sake of computational performance.  
There are fields of research where, even today, simulations are sometimes 
performed in single precision [<a href=\"modelica://QCalc.UsersGuide.References.Brown2011\">Brown2011</a>, 
<a href=\"modelica://QCalc.UsersGuide.References.Hess2008\">Hess2008</a>] and 
where scaling is a concern [<a href=\"modelica://QCalc.UsersGuide.References.Rapaport2004\">Rapaport2004</a>, 
p.&nbsp;29].</p> 

<p>The method is neutral with regards to not only the values of the base 
units, but also the choice of the base units and even the number of base 
units.  This is an advantage because many systems of units besides SI are 
used in science and engineering. As mentioned previously, the choice of 
base units is somewhat arbitrary, and different systems of units are based 
on different choices.  Some systems of units have fewer base units (lower 
rank) than SI, since additional constraints are added that exchange base 
units for derived units.  For example, the Planck, Stoney, Hartree, and 
Rydberg systems of units define the Boltzmann constant to be equal to one 
(<i>k</i><sub>B</sub> = 1) 
[<a href=\"http://en.wikipedia.org/wiki/Natural_units\">http://en.wikipedia.org/wiki/Natural_units</a>]. 
The unit K is eliminated 
[<a href=\"modelica://QCalc.UsersGuide.References.Greiner1995\">Greiner1995</a>, 
p.&nbsp;386] or, more precisely, considered a derived 
unit instead of a base unit.  In SI, the kelvin would be derived from the 
units kilogram, meter, and second (K &asymp; 
1.381&times;10<sup>-23</sup>&nbsp;kg&nbsp;m<sup>2</sup>/s<sup>2</sup>).</p> 

<p>There are seven independent units and constants in the 
<a href=\"modelica://QCalc.Units\">Units</a> package (cyc, 
<i>R</i><sub>&infin;</sub>, <i>c</i>, <i>G</i><sub>0</sub>, &Phi;<sub>0</sub>,  
<i>k</i><sub>F</sub>, and <i>R</i>; see 
<a href=\"modelica://QCalc.Units.Bases\">Units.Bases</a>), which are related 
to the seven SI base units (m, kg, s, A, K, mol, and cd). The primary 
relations are between 
<i>R</i><sub>&infin;</sub> and m,
<i>c</i> and s,
<i>G</i><sub>0</sub> and A, 
&Phi;<sub>0</sub> and V,
<i>k</i><sub>F</sub> and mol, and
<i>R</i> and K.
The cycle (cyc) is defined independently, but the candela (cd) is considered a 
derived unit (1/683&nbsp;W/sr). **update</p>
  
<p>Although the Faraday constant (<i>k</i><sub>F</sub> or 
96485.3399&nbsp;C/mol) and the gas constant (<i>R</i> or 
8.314472&nbsp;J/(mol&nbsp;K)) are among the independent constants, 
they are normalized to one in order to simplify the model equations 
and allow electrons and chemical species to be to represented by the 
same base <a href=\"modelica://Units.Species.Species\">Species</a> 
model. The normalization of the Faraday constant implies that 
the coulomb (C) is an amount (not necessarily of charge) which is 
proportional to the mole (mol). The additional normalization of 
the gas constant (R or 8.314472&nbsp;J/(mol&nbsp;K)) implies that 
the kelvin (K) is a potential which is proportional to the volt (V or 
J/C).</p>
  
  
<p><b>Implementation:</b></p>

<p>The units and constants are defined as variables in this 
<a href=\"modelica://QCalc.Units\">Units</a> package.  Each is a 
<code>constant</code> of the appropriate type from the 
<a href=\"modelica://QCalc.Quantities\">Quantities</a> package. The first 
section of this package establishes mathematical constants.  The next section 
establishes the independent constants and units, which grouped in a 
<code>replaceable</code> subpackage.  The third section  establishes the 
constants and units which may be derived from the base units and constants 
using  transcendental and accepted empirical relations.  The rest of the 
code establishes the SI prefixes  and the remaining derived units and 
constants.  The SI prefixes are included in their  unabbreviated form in 
order to avoid naming conflicts.  All of the primary units of SI  are 
included (Tables 1 and 3 of  [<a href=\"modelica://QCalc.UsersGuide.References.BIPM2006\">BIPM2006</a>]) except 
for &deg;C, since  it involves an offset.  Other units such as the 
atmosphere (atm) are included for convenience.  Some units that include 
prefixes are defined as well (e.g., kg and cm).  However,  most 
prefixes must be given as explicit factors (e.g., 
<code>U.kilo*U.m</code>).</p>
 
<p>Besides the units and constants, this package also contains functions 
(e.g., <a href=\"modelica://QCalc.Units.to_degC\">to_degC</a>) that   
convert quantities from the unit system defined in <a href=\"modelica://Units\">Units</a> 
to quantities   expressed in units.  These functions are included for units 
that involve offsets<!-- or other functions besides simple scaling-->.   For 
conversions that require just a scaling factor, it is simpler to use the 
units directly.  For example, to convert from potential in volts use <code>v = 
v_V*U.V</code>,   where <code>v</code> is potential and <code>v_V</code> 
is potential expressed in volts.</p>
 
<p>This package (<a href=\"modelica://QCalc.Units\">Units</a>) is 
abbreviated as <code>U</code> for convenience throughout   the rest of 
<a href=\"modelica://QCalc.Units\">Units</a>.  For example, an initial 
pressure might be defined as   <i>p</i><sub>IC</sub> = 
<code>U.atm</code>.</p>

<p>An instance of the <a href=\"modelica://Units.Conditions.Environment\">Environment</a> 
model is usually included at the top level of a model.  
It records the base units and constants so that it is possible to 
re-derive all of the other units and constants.  This is important in 
order to properly interpret simulation results if the base units and 
constants are later re-adjusted.</p>

<p>The <a href=\"modelica://QCalc.Units.setup\">Units.setup</a> function 
establishes unit conversions using the values of the units, constants, and 
prefixes.  These unit conversions may include offsets. The function also 
sets the default display units.  It is automatically called when 
<a href=\"modelica://Units\">Units</a> is loaded from the 
<a href=\"modelica://QCalc/../load.mos\">load.mos</a> script.  It can also be called 
manually from the \"Re-initialize the units\" command available in the 
Modelica development environment from the <a href=\"modelica://QCalc.Units\">Units</a> 
package or any subpackage.  A spreadsheet 
(<a href=\"modelica://QCalc/Resources/quantities.xls\">Resources/quantities.xls</a>) 
is available to help maintain the quantities, default units, and the setup 
function.</p>

<p>The values of the units, constants, and prefixes can be evaluated by 
translating the <a href=\"modelica://QCalc.Units.Examples.Evaluate\">Units.Examples.Evaluate</a> 
model.  This defines the values in the workspace of the Modelica development 
environment. For convenience, the <a href=\"modelica://QCalc/../load.mos\">load.mos</a> 
script automatically does this and saves the result as \"units.mos\" in the working 
directory.</p>
 
<p>Where the <code>der</code> operator is used in models, it is explicitly 
divided by the unit second (e.g., <code>der(x)/U.s</code>).  This is 
necessary because the global variable <code>time</code> is in seconds 
(i.e., <code>time</code> is a number, not a quantity).</p>

<p>Although it is not necessary due to the acausal nature of 
<a href=\"http://www.modelica.org\">Modelica</a>, the declarations in this 
package are sorted so that they can be easily ported to imperative or 
causal languages (e.g.,   <a href=\"http://www.python.org\">Python</a> 
and C).  In fact, this has been done in the included 
<a href=\"modelica://QCalc/Resources/Source/Python/doc/index.html\">FCRes</a> 
module for plotting and analysis.</p>


<p><b>Some Notes on Angle:</b></p>

<p>As mentioned in the <a href=\"modelica://QCalc.Quantities\">Quantities</a> 
package, angle is a dimension.  This is different from 
SI, where angle is considered dimensionless (rad = 1) 
[<a href=\"modelica://QCalc.UsersGuide.References.BIPM2006\">BIPM2006</a>].<sup><a href=\"#fn1\" id=\"ref1\">1</a></sup>
Units of angle such as cycle (cyc), 
radian (rad), and degree must be explicitly included in the expression of 
quantities.  The radian is defined as the cycle divided by two pi (rad = 
cyc/2&pi;), which is not necessarily one because the cycle is an 
independent base unit (as mentioned above).  Solid angle has the dimensionality of 
squared angle; the streradian (sr) is defined as the squared radian 
(rad<sup>2</sup>), not one. Wavenumber has a dimensionality of angle per 
length (e.g., can be expressed in cyc/cm) and frequency has a dimensionality of angle per 
time.  The hertz (Hz) is defined as cyc/s (not 1/s).  The weber (Wb) is 
defined as V/Hz (not V&nbsp;s) and the henry (H) is defined as V&nbsp;s/A
(not Wb/A).  Planck's constant (<i>h</i>) can be expressed in J/Hz or 
J&nbsp;s/rad (not J&nbsp;s).  The magnetic constant and Amp&egrave;re's force 
constant can be expressed in Wb/(A&nbsp;m), not H/m (see below).</p>

<p>The explicit inclusion of angle has four advantanges.  The first is that it 
avoids a conflict in the definition of SI units.  BIPM defines the hertz 
as the reciprocal second (Hz = s<sup>-1</sup>), but states that \"[t]he SI 
unit of frequency is given as the hertz, implying the unit cycles per 
second\" [<a href=\"modelica://QCalc.UsersGuide.References.BIPM2006\">BIPM2006</a>]. 
Due to trigonometry (cyc = 2&pi;&nbsp;rad), BIPM's 
definition of the radian as one (rad = 1) implies that the cycle is two pi 
(cyc = 2&pi;) and the hertz is not cycles per second but rather cycles per 
second divided by two pi (Hz = cyc/(2&pi;&nbsp;s)).</p>

<p>The second advantage is that the explicit inclusion of angle avoids the 
need to use different variables depending on the chosen unit of angle.  If 
a variable represents a quantity (e.g., angle) directly, then its value 
does not depend on the chosen unit (e.g., of angle).  A single variable 
can be used regardless of which unit the angle is ultimately expressed in. 
For example, frequency is sometimes represented by a variable in hertz 
(e.g., &nu;) and other times by a variable in radians per second (e.g., 
&omega;).  If angle is explcit, one variable will suffice (<i>f</i> = 
&nu;&nbsp;cyc/s = &omega;&nbsp;rad/s).  Likewise, there is no need for the 
reduced Planck constant (i.e., <i>h</i> &asymp; 
6.6260e-34&nbsp;J/Hz &asymp; 1.0545e-34&nbsp;J&nbsp;s/rad).</p>

<p>The third advantage appears when the size of a circle (variable <i>S</i>) is 
described in terms of length per angle&mdash;radius per radian (<i>r</i>/rad) 
or, equivalently, circumference per cycle.  This simplifies the 
representation of some common equations.  The circumference of one circle is 
<i>S</i>&nbsp;cyc, which is preferred over 2&pi;<i>r</i>.  The surface area of 
one sphere is <i>S</i><sup>2</sup>&nbsp;sp, where sp = 4&pi;&nbsp;sr is the 
spat, a unit of solid angle.<sup><a href=\"#fn2\" id=\"ref2\">2</a></sup>

<!--Coulomb's force law can be expressed using the electric constant (&epsilon;<sub>0</sub>) without 
a explicit factor of 1/4&pi;:  
<blockquote>
 <i>F</i> = (1/&epsilon;<sub>0</sub>)&nbsp;<i>q</i><sub>1</sub><i>q</i><sub>2</sub>/(<i>S</i><sup>2</sup>&nbsp;sp)
</blockquote>
where <i>S</i><sup>2</sup>&nbsp;sp is the surface area of the sphere centered between and touching the charges 
(<i>q</i><sub>1</sub> and <i>q</i><sub>2</sub>).
Since <i>S</i> = <i>r</i>/rad, sp = 4&pi;&nbsp;sr, and sr = rad<sup>2</sup>,
this is
<blockquote>
 <i>F</i> = <i>k</i><sub>C</sub>&nbsp;<i>q</i><sub>1</sub><i>q</i><sub>2</sub>/<i>r</i><sup>2</sup>
 </blockquote>
where <i>k</i><sub>C</sub> is the electric constant, which is 
1/(4*&pi;&epsilon;<sub>0</sub>) as expected.
Thus, there is no real 
need to maintain the electric force constant as a separate variable from 
the electric constant.-->

Amp&egrave;re's force law can be expressed using the magnetic constant (&mu;<sub>0</sub>) without 
an explicit factor of 1/2&pi;:  
<blockquote>
 <i>F</i> = &mu;<sub>0</sub>&nbsp;<i>I</i><sub>1</sub><i>I</i><sub>2</sub>&nbsp;<i>L</i>/<i>S</i>
</blockquote>
where <i>I</i><sub>1</sub> and <i>I</i><sub>2</sub> are the currents, 
<i>L</i> is the length of each wire, and <i>F</i> is the force between the wires.  
Since <i>S</i> = <i>r</i>/rad, rad = cyc/2&pi;, and 
&mu;<sub>0</sub> = 4&pi;&times;10<sup>−7</sup>&nbsp;Wb/(A&nbsp;m), where 
Wb = V/Hz = V&nbsp;s/cyc, this is
<blockquote>
 <i>F</i> = 2<i>k</i><sub>A</sub>&nbsp;<i>I</i><sub>1</sub><i>I</i><sub>2</sub>&nbsp;<i>L</i>/<i>r</i>
</blockquote>
where <i>k</i><sub>A</sub> is the magnetic force constant 
(10<sup>−7</sup>&nbsp;N/A<sup>2</sup>) as expected.  Thus, there is no real 
need to maintain the magnetic force constant as a separate variable from 
the magnetic constant.  
Based on the properties presented in
<a href=\"modelica://Units.Characteristics.'e-'.Gas\">Units.Characteristics.'e-'.Gas</a>,
the magnetic force constant is the product of the specific electron mass and the 
specific electron radius.
The inductance of a solenoid can be expressed as 
&mu;<i>N</i><i>A</i>/<i>L</i>&prime;, where &mu; is the permeability 
(product of relative permeability and &mu;<sub>0</sub>, with the same
dimensionality as &mu;<sub>0</sub>) and <i>A</i> is the projected cross-sectional 
area of the solenoid.  The variable <i>N</i> represents the
number of turns, which is dimensionless.<sup><a href=\"#fn3\" id=\"ref3\">3</a></sup>
<i>L</i>&prime; is the pitch&mdash;the length of the solenoid divided by the
wrapped angle.  Its dimensionality is length per angle.  Therefore, the angle 
in the denominators of &mu; and <i>L</i>&prime; cancel; angle does not
appear in the dimensionality of inductance.
</p>


<p>Finally, the potential confusion with energy and torque in SI 
[<a href=\"modelica://QCalc.UsersGuide.References.BIPM2006\">BIPM2006</a>] can
be eliminated using explicit angles and the concept of the size of a circle.  If torque is 
expressed as the product of force and the size of the circular path (not 
radius), then it has the dimensionality of energy per angle, which is clearly
distinct from energy.  The angle cancels in the expression of rotational
power as the product of torque and rotational velocity (angle per time).</p>

<hr>

<p id=\"fn1\"><small>1. The common argument that angle is 
dimensionless (\"angle is a ratio of lengths\") is flawed.    It is not 
correct to say that \"angle is the ratio of arclength to radius.\"    
Rather, angle in radians is the ratio of arclength to radius   
(&theta;/rad = <i>L</i>/<i>r</i>).  It is not necessary that angle 
(&theta;)   is dimensionless, only that angle and radian (rad) have the 
same dimension.   In <a href=\"modelica://Units\">Units</a>, that 
dimension is called angle.   The common (and correct) understanding is 
that the radian (rad) is a unit of angle,   just as the meter (m) is a 
unit of length.  The dimensionality of the radian  is angle, just as 
the dimensionality of the meter is length.<a href=\"#ref1\" title=\"Jump 
back to footnote 1 in the text.\">&#8629;</a></small></p>

<p id=\"fn2\"><small>2. The spat (sp) is the solid angle of one sphere, just 
as the cycle (cyc) is the angle of one circle.  For mnemonic purposes, sp can be 
considered as the abbreviation for sphere as well as spat.<a href=\"#ref2\" title=\"Jump 
back to footnote 2 in the text.\">&#8629;</a></small></p>

<p id=\"fn3\"><small>3. The number of turns (<i>N</i>) is the wrapped angle 
(&Theta;) expressed in cycles (i.e., turns): <i>N</i> = &Theta;/cyc.  Therefore, it
is a dimensionless ratio.<a href=\"#ref3\" title=\"Jump 
back to footnote 3 in the text.\">&#8629;</a></small></p>

<p><b>Licensed by the Hawaii Natural Energy Institute under the Modelica 
License 2</b><br> Copyright &copy; 2007&ndash;2014, <a href=\"
http://www.hnei.hawaii.edu/\">Hawaii Natural Energy Institute</a> and <a 
href=\"http://www.gtrc.gatech.edu/\">Georgia Tech Research 
Corporation</a>.</p>
 
<p><i>This Modelica package is <u>free</u> software and the use is 
completely at <u>your own risk</u>; it can be redistributed and/or 
modified under the terms of the Modelica License 2. For license conditions 
(including the disclaimer of warranty) see <a href=\"
modelica://QCalc.UsersGuide.License\"> QCalc.UsersGuide.License</a> or 
visit <a href=\"http://www.modelica.org/licenses/ModelicaLicense2\"> 
http://www.modelica.org/licenses/ModelicaLicense2</a>.</i></p>
</html>"),
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
          points={{68,2},{68,-46},{64,-60},{58,-68},{48,-72},{18,-72},{18,-64},
              {46,-64},{54,-60},{58,-54},{60,-46},{60,-26},{64,-20},{68,-6},{68,
              2}},
          lineColor={64,64,64},
          smooth=Smooth.Bezier,
          fillColor={175,175,175},
          fillPattern=FillPattern.Solid)}));

end Units;
