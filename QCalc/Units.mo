within QCalc.Units;
package Examples "Examples"
  extends Icons.ExamplesPackage;
  model Evaluate "Evaluate the values assigned to constants and units"

    extends Icons.Example;

    // -------------------------------------------------------------------------
    // Mathematical constants

    final constant Q.Number pi=U.pi "pi";

    // -------------------------------------------------------------------------
    // Base physical constants
    final constant Q.Wavenumber R_inf=U.R_inf "Rydberg constant";
    final constant Q.Velocity c=U.c "speed of light";
    final constant Q.MagneticFluxReciprocal k_J=U.k_J "Josephson constant";
    final constant Q.MagneticFluxSpecific R_K=U.R_K "von Klitzing constant";
    final constant Q.Number k_F=U.k_F "Faraday constant";
    final constant Q.Number R=U.R "gas constant";
    final constant Q.LengthSpecificMassSpecific k_Aprime=U.k_Aprime
      "modified Ampere constant";

    // -------------------------------------------------------------------------
    // Derived physical constants

    final constant Q.MagneticFlux Phi_0=U.Phi_0
      "magnetic flux quantum (&Phi;<sub>0</sub>)";
    final constant Q.Conductance G_0=U.G_0 "conductance quantum";
    final constant Q.Amount e=U.e "elementary charge";
    final constant Q.MomentumRotational h=U.h "Planck constant";
    final constant Q.AmountReciprocal N_A=U.N_A "Avogadro constant";
    final constant Q.Amount k_B=U.k_B "Boltzmann constant";
    final constant Q.Angle cyc=U.cyc "cycle";
    final constant Q.PowerArea c_1=U.c_1 "first radiation constant";
    final constant Q.PotentialPerWavenumber c_2=U.c_2
      "second radiation constant";
    final constant Q.MagneticFluxReciprocal c_3_f=U.c_3_f
      "Wien frequency displacement constant";
    final constant Q.PotentialPerWavenumber c_3_lambda=U.c_3_lambda
      "Wien wavelength displacement constant";
    final constant Q.PowerAreicPerPotential4 sigma=U.sigma
      "Stefan-Boltzmann constant";
    final constant Q.Energy Ry=U.Ry "Rydberg energy";
    final constant Q.Energy Ha=U.Ha "Hartree energy";
    final constant Q.Temperature T_H=U.T_H "Hartree temperature";

    // -------------------------------------------------------------------------
    // Mathematical relations
    final constant Q.Angle rad=U.rad "radian";

    // -------------------------------------------------------------------------
    // Empirical relations
    final constant Q.Length m=U.m "metre";
    final constant Q.Time s=U.s "second";
    final constant Q.MagneticFlux Wb=U.Wb "weber";
    final constant Q.Conductance S=U.S "siemens";
    final constant Q.Amount mol=U.mol "mole";
    final constant Q.Potential K=U.K "kelvin";

    // -------------------------------------------------------------------------
    // SI units decoupled from the base constants
    final constant Q.LuminousIntensity cd=U.cd "candela";

    // -------------------------------------------------------------------------
    // SI base units [BIPM2006, Table 1] and intermediate units
    final constant Q.Frequency Hz=U.Hz "hertz";
    final constant Q.Potential V=U.V "volt";
    final constant Q.Current A=U.A "ampere";
    final constant Q.Amount C=U.C "coulomb";
    final constant Q.Energy J=U.J "joule";
    final constant Q.Velocity2 Gy=U.Gy "gray";
    final constant Q.Mass kg=U.kg "kilogram ";
    final constant Q.Mass g=U.g "gram ";

    // -------------------------------------------------------------------------
    // SI derived units with special names and symbols [BIPM2006, Table 3]
    final constant Q.Angle2 sr=U.sr "steradian";
    final constant Q.Power lm=U.lm "lumen";
    final constant Q.Power W=U.W "watt";
    final constant Q.Force N=U.N "newton";
    final constant Q.Pressure Pa=U.Pa "pascal";
    final constant Q.MagneticFluxAreic T=U.T "tesla";
    final constant Q.PowerAreic lx=U.lx "lux";
    final constant Q.Capacitance F=U.F "farad";
    final constant Q.Resistance ohm=U.ohm "ohm";
    final constant Q.Inductance H=U.H "henry";
    final constant Q.Current kat=U.kat "katal";
    final constant Q.Velocity2 Sv=U.Sv "sievert";
    final constant Q.TimeReciprocal Bq=U.Bq "becquerel";

    // -------------------------------------------------------------------------
    // Non-SI units accepted for use with SI units [BIPM2006, Table 6]
    final constant Q.Time min=U.min "minute";
    final constant Q.Time hr=U.hr "hour";
    final constant Q.Time d=U.d "day";
    final constant Q.Angle deg=U.deg "degree";
    final constant Q.Volume L=U.L "liter";

    // -------------------------------------------------------------------------
    // Other non-SI units [BIPM2006, Table 8]
    final constant Q.Acceleration g_0=U.g_0 "standard gravity";
    final constant Q.Length cm=U.cm "centimetre";
    final constant Q.Volume cc=U.cc "cubic centimetre";
    final constant Q.PressureLineic Hg=U.Hg
      "force per volume of mercury under standard gravity";
    final constant Q.Length mm=U.mm "millimetre";
    final constant Q.Pressure mmHg=mm*Hg "millimetre of mercury";
    final constant Q.Pressure kPa=U.kPa "kilopascal";
    final constant Q.Pressure bar=U.bar "bar";
    final constant Q.Area b=U.b "barn";
    final constant Q.Length angstrom=U.angstrom "angstrom";
    final constant Q.Length nmi=U.nmi "nautical mile";
    final constant Q.Velocity kn=U.kn "knot";

    // -------------------------------------------------------------------------
    // Non-SI units associated with the CGS and the CGS-Gaussian system of units
    // [BIPM2006, Table 9]
    final constant Q.Acceleration Gal=U.Gal "gal";
    final constant Q.Force dyn=U.dyn "dyne";
    final constant Q.Energy erg=U.erg "erg";
    final constant Q.Pressure Ba=U.Ba "barye";
    final constant Q.Viscosity P=U.P "poise";
    final constant Q.Diffusivity St=U.St "stokes";
    final constant Q.Luminance sb=U.sb "stilb";
    final constant Q.Illuminance ph=U.ph "phot";
    final constant Q.Current abA=U.abA "abampere";
    final constant Q.Amount abC=U.abC "abcoloumb";
    final constant Q.Potential abV=U.abV "abvolt";
    final constant Q.MagneticFlux Mx=U.Mx "maxwell";
    final constant Q.MagneticFluxAreic Gs=U.Gs "gauss";
    final constant Q.MagneticFlux pole=U.pole "unit pole";
    final constant Q.MagneticFieldAux Oe=U.Oe "oersted";
    final constant Q.Capacitance abF=U.abF "abfarad";
    final constant Q.Resistance abohm=U.abohm "abohm";
    final constant Q.Inductance abH=U.abH "abhenry";

    // -------------------------------------------------------------------------
    // Constants related to Ampere's force law
    constant Q.LengthSpecificMassSpecific k_A=U.k_A "Ampere constant";
    constant Q.PermittivityReciprocal k_C=U.k_C "Coulomb constant";
    final constant Q.Permittivity epsilon_0=U.epsilon_0 "electric constant";
    final constant Q.Permeability mu_0=U.mu_0 "magnetic constant ";
    final constant Q.Resistance Z_0=U.Z_0 "characteristic impedance of vacuum";
    final constant Q.Angle alpha=U.alpha "fine-structure constant";
    final constant Q.Length a_0=U.a_0 "Bohr radius";
    final constant Q.Wavelength lambda_e=U.lambda_e
      "electron Compton wavelength";
    final constant Q.WavelengthVelocity kappa=U.kappa "quantum of circulation";
    final constant Q.MassSpecific m_e=U.m_e "specific electron rest mass";
    final constant Q.LengthSpecific r_e=U.r_e
      "specific classical electron radius";
    final constant Q.MagneticDipoleMoment mu_B=U.mu_B "Bohr magneton";
    final constant Q.Mass M_e=U.M_e "mass of an electron";
    final constant Q.Time t_H=U.t_H "Hartree time";
    final constant Q.Length l_n=U.l_n "natural unit of length";
    final constant Q.Time t_n=U.t_n "natural unit of time";

    // -------------------------------------------------------------------------
    // Other
    final constant Q.Time y=U.y "Julian year";
    final constant Q.Length ly=U.ly "light year";
    final constant Q.Length au=U.au "astronomical unit";
    final constant Q.Length pc=U.pc "parsec";
    final constant Q.Pressure atm=U.atm "atmosphere";
    final constant Q.Pressure Torr=U.Torr "torr";
    final constant Q.Energy Wh=U.Wh "watt hour";
    final constant Q.Energy eV=U.eV "electron volt";
    final constant Q.Angle2 sp=U.sp "spat";
    final constant Q.Frequency rpm=U.rpm "revolution per minute";
    final constant Q.Number '%'=U.'%' "percent";
    final constant Q.MagnetomotiveForce AT=U.AT "ampere-turn";
    final constant Q.Area D=U.D "darcy";
    final constant Q.Mass u=U.u "unified atomic mass unit";
    final constant Q.Concentration M=U.M "molar";

    annotation (Documentation(info="<html><p>This model may be used to calculate the values of the
  constants and units.</p>

<p>For more information, please see the documentation for the
  <a href=\"modelica://QCalc.Units\">Units</a> package.</p></html>"), Commands(
          executeCall=QCalc.Units.setup() "Re-initialize the units."));
  end Evaluate;

  model Display "Demonstrate the display units for the quantities"
    extends Icons.Example;
    ExampleModel doubleClickMe
      annotation (Placement(transformation(extent={{-20,-10},{20,10}})));
    annotation (Commands(executeCall=QCalc.Units.setup()
          "Re-initialize the units."));
  end Display;

  model ExampleModel "Model that uses all of the quantities"

    extends Icons.Block;

    // Generated from QCalc/Resources/quantities.xls, 2014-8-22
    parameter Q.Acceleration Acceleration=1*U.Gal "Acceleration";
    parameter Q.Amount Amount=1*U.mol "Amount";
    parameter Q.AmountReciprocal AmountReciprocal=1/U.C "Reciprocal of amount";
    parameter Q.Angle Angle=1*U.rad "Angle";
    parameter Q.Angle2 Angle2=1*U.sr "Solid angle";
    parameter Q.Area Area=1*U.b "Area";
    parameter Q.Capacitance Capacitance=1*U.F "Capacitance";
    parameter Q.Concentration Concentration=1*U.M "Concentration";
    parameter Q.Conductance Conductance=1*U.S "Conductance";
    parameter Q.Current Current=1*U.A "Current";
    parameter Q.Diffusivity Diffusivity=1*U.St "Diffusivity";
    parameter Q.Energy Energy=1*U.J "Energy";
    parameter Q.Force Force=1*U.N "Force";
    parameter Q.Frequency Frequency=1*U.Hz "Frequency";
    parameter Q.Illuminance Illuminance=1*U.lm "Illuminance";
    parameter Q.Inductance Inductance=1*U.H "Inductance";
    parameter Q.Length Length=1*U.m "Length";
    parameter Q.LengthSpecific LengthSpecific=1*U.m/U.C "Specific length";
    parameter Q.LengthSpecificMassSpecific LengthSpecificMassSpecific=1*U.H/U.m
      "Specific length times specific mass";
    parameter Q.Luminance Luminance=1*U.sb "Luminance";
    parameter Q.LuminousEmittance LuminousEmittance=1*U.lx "Luminous emittance";
    parameter Q.LuminousIntensity LuminousIntensity=1*U.cd "Luminous intensity";
    parameter Q.MagneticDipoleMoment MagneticDipoleMoment=1*U.J/U.T
      "Magnetic dipole moment";
    parameter Q.MagneticFieldAux MagneticFieldAux=1*U.AT/U.m
      "Auxiliary magnetic field";
    parameter Q.MagneticFlux MagneticFlux=1*U.Wb "Magnetic flux";
    parameter Q.MagneticFluxAreic MagneticFluxAreic=1*U.T "Areic magnetic flux";
    parameter Q.MagneticFluxReciprocal MagneticFluxReciprocal=1/U.Wb
      "Reciprocal of magnetic flux";
    parameter Q.MagneticFluxSpecific MagneticFluxSpecific=1*U.Wb/U.C
      "Specific magnetic flux";
    parameter Q.MagnetomotiveForce MagnetomotiveForce=1*U.AT
      "Magnetomotive force";
    parameter Q.Mass Mass=1*U.kg "Mass";
    parameter Q.MassSpecific MassSpecific=1*U.g/U.mol "Specific mass";
    parameter Q.MomentumRotational MomentumRotational=1*U.J/U.Hz
      "Rotational momentum";
    parameter Q.Number Number=1 "Number";
    parameter Q.Permeability Permeability=1*U.Wb/(U.AT*U.m) "Permeability";
    parameter Q.Permittivity Permittivity=1*U.F/U.m "Permittivity";
    parameter Q.PermittivityReciprocal PermittivityReciprocal=1*U.m/U.F
      "Reciprocal of permittivity";
    parameter Q.Potential Potential=1*U.V "Potential";
    parameter Q.PotentialAbsolute PotentialAbsolute=1*U.K "Absolute potential";
    parameter Q.PotentialPerWavenumber PotentialPerWavenumber=1*U.V*U.m/U.rad
      "Potential per wavenumber";
    parameter Q.Power Power=1*U.W "Power";
    parameter Q.PowerArea PowerArea=1*U.W*U.m^2 "Power times area";
    parameter Q.PowerAreic PowerAreic=1*U.W/U.m^2 "Areic power";
    parameter Q.PowerAreicPerPotential4 PowerAreicPerPotential4=1*U.W/(U.m^2*U.K
        ^4) "Areic power per 4th power of potential";
    parameter Q.Pressure Pressure=1*U.Pa "Pressure";
    parameter Q.PressureLineic PressureLineic=1*U.Pa/U.m "Lineic pressure";
    parameter Q.Resistance Resistance=1*U.ohm "Resistance";
    parameter Q.Time Time=1*U.s "Time";
    parameter Q.TimeReciprocal TimeReciprocal=1*U.Bq "Reciprocal of time";
    parameter Q.Velocity Velocity=1*U.m/U.s "Velocity";
    parameter Q.Velocity2 Velocity2=1*U.Sv "Squared velocity";
    parameter Q.Viscosity Viscosity=1*U.Pa*U.s/1 "Viscosity";
    parameter Q.Volume Volume=1*U.m^3 "Volume";
    parameter Q.Wavelength Wavelength=1*U.m/U.cyc "Wavelength";
    parameter Q.WavelengthVelocity WavelengthVelocity=1*U.m^2/(U.cyc*U.s)
      "Wavelength times velocity";
    parameter Q.Wavenumber Wavenumber=1*U.cyc/U.m "Wavenumber";
    // -------- end from QCalc/Resources/quantities.xls
    annotation (Commands(executeCall=QCalc.Units.setup()
          "Re-initialize the units."));
  end ExampleModel;
  annotation (Commands(executeCall=QCalc.Units.setup()
        "Re-initialize the units."));
end Examples;

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

  record Base "Base constants"
    extends Icons.Record;

    constant Q.Wavenumber R_inf=1
      "<html><a href=\"http://en.wikipedia.org/wiki/Rydberg_constant\">Rydberg constant</a> (<i>R</i><sub>&infin;</sub>)</html>";
    constant Q.Velocity c=1
      "<html><a href=\"http://en.wikipedia.org/wiki/Speed_of_light\">speed of light</a></html>";
    constant Q.MagneticFluxReciprocal k_J=1
      "<html><a href=\"http://en.wikipedia.org/wiki/Josephson_constant\">Josephson constant</a> (<i>k</i><sub>J</sub>)</html>";
    constant Q.MagneticFluxSpecific R_K=1
      "<html><a href=\"http://en.wikipedia.org/wiki/Von_Klitzing_constant\">von Klitzing constant</a> (<i>R</i><sub>K</sub>)</html>";
    constant Q.Number k_F=1
      "<html><a href=\"http://en.wikipedia.org/wiki/Faraday_constant\">Faraday constant</a> (<i>k</i><sub>F</sub>)</html>";
    constant Q.Number R=1
      "<html><a href=\"http://en.wikipedia.org/wiki/Gas_constant\">gas constant</a></html>";
    constant Q.LengthSpecificMassSpecific k_Aprime=1
      "<html>modified Ampere constant (<i>k</i><sub>A</sub> cyc/&alpha;)</html>";
    constant Boolean rational=true "true if the unit system is rationalized";

    annotation (Documentation(info="<html><p>Please see the notes in the Modelica code and the documentation of the
  <a href=\"modelica://QCalc.Units\">Units</a> package.</p></html>"), Commands(
          executeCall=QCalc.Units.setup() "Re-initialize the units."));
  end Base;
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
  annotation (Commands(executeCall=QCalc.Units.setup()
        "Re-initialize the units."));
end Prefixes;

package Interfaces "Partial classes"
  extends Icons.InterfacesPackage;

  partial operator record LambdaUnit
    "Partial operator record for a lambda unit"
    replaceable type Quantity = Q.Interfaces.Quantity;

  end LambdaUnit;

  operator record degC "degree Celsius (degC)"
    extends LambdaUnit(redeclare type Quantity = Q.Temperature);

    operator '*' "Multiplication is overloaded to map a number to a quantity"

      function num2qty "Convert a number to a quantity"

        input Real n "Number";
        input degC selfDummy
          "2nd argument is the unit itself; contains no data";
        output Quantity q "Quantity";

      algorithm
        q := (n + 273.15)*K;
        annotation (Inline=true, inverse(n='/'.qty2num(q, selfDummy)));
      end num2qty;

    end '*';

    operator '/' "Division is overloaded to map a quantity to a number"

      function qty2num "Convert a quantity to a number"

        input Quantity q "Quantity";
        input degC selfDummy
          "2nd argument is the unit itself; contains no data";
        output Real n "Number";

      algorithm
        n := q/K - 273.15;
        annotation (Inline=true, inverse(q='*'.num2qty(n, selfDummy)));
      end qty2num;

    end '/';

  end degC;

  operator record Np
    "neper (Np) (in terms of amplitude ratio, not power ratio)"
    extends LambdaUnit(redeclare type Quantity = Q.Number);

    operator '*' "Multiplication is overloaded to map a number to a quantity"
      function num2qty "Convert a number to a quantity"

        input Real n "Number";
        input Np selfDummy "2nd argument is the unit itself; contains no data";
        output Quantity q "Quantity";

      algorithm
        q := exp(n);
        annotation (Inline=true, inverse(n='/'.qty2num(q, selfDummy)));
      end num2qty;
    end '*';

    operator '/' "Division is overloaded to map a quantity to a number"

      function qty2num "Convert a quantity to a number"

        input Quantity q "Quantity";
        input Np selfDummy "2nd argument is the unit itself; contains no data";
        output Real n "Number";

      algorithm
        n := log(q);
        annotation (Inline=true, inverse(q='*'.num2qty(n, selfDummy)));
      end qty2num;
    end '/';
  end Np;

  operator record B "bel (B) (in terms of power ratio, not amplitude ratio)"
    extends LambdaUnit(redeclare type Quantity = Q.Number);

    operator '*' "Multiplication is overloaded to map a number to a quantity"
      function num2qty "Convert a number to a quantity"

        input Real n "Number";
        input B selfDummy "2nd argument is the unit itself; contains no data";
        output Quantity q "Quantity";

      algorithm
        q := 10^n;
        annotation (Inline=true, inverse(n='/'.qty2num(q, selfDummy)));
      end num2qty;
    end '*';

    operator '/' "Division is overloaded to map a quantity to a number"

      function qty2num "Convert a quantity to a number"

        input Quantity q "Quantity";
        input B selfDummy "2nd argument is the unit itself; contains no data";
        output Real n "Number";

      algorithm
        n := log10(q);
        annotation (Inline=true, inverse(q='*'.num2qty(n, selfDummy)));
      end qty2num;
    end '/';
  end B;

  operator record dB
    "decibel (dB) (in terms of power ratio, not amplitude ratio)"
    extends LambdaUnit(redeclare type Quantity = Q.Number);

    operator '*' "Multiplication is overloaded to map a number to a quantity"
      function num2qty "Convert a number to a quantity"

        input Real n "Number";
        input dB selfDummy "2nd argument is the unit itself; contains no data";
        output Quantity q "Quantity";

      algorithm
        q := 10^(Prefixes.d*n);
        annotation (Inline=true, inverse(n='/'.qty2num(q, selfDummy)));
      end num2qty;
    end '*';

    operator '/' "Division is overloaded to map a quantity to a number"

      function qty2num "Convert a quantity to a number"

        input Quantity q "Quantity";
        input dB selfDummy "2nd argument is the unit itself; contains no data";
        output Real n "Number";

      algorithm
        n := log10(q)/Prefixes.d;
        annotation (Inline=true, inverse(q='*'.num2qty(n, selfDummy)));
      end qty2num;
    end '/';
  end dB;

  operator record kPag "kilopascal, gauge (kPag)"
    extends LambdaUnit(redeclare type Quantity = Q.Pressure);

    operator '*' "Multiplication is overloaded to map a number to a quantity"
      function num2qty "Convert a number to a quantity"

        input Real n "Number";
        input kPag selfDummy
          "2nd argument is the unit itself; contains no data";
        output Quantity q "Quantity";

      algorithm
        q := n*kPa + atm;
        annotation (Inline=true, inverse(n='/'.qty2num(q, selfDummy)));
      end num2qty;
    end '*';

    operator '/' "Division is overloaded to map a quantity to a number"

      function qty2num "Convert a quantity to a number"

        input Quantity q "Quantity";
        input kPag selfDummy
          "2nd argument is the unit itself; contains no data";
        output Real n "Number";

      algorithm
        n := (q - atm)/kPa;
        annotation (Inline=true, inverse(q='*'.num2qty(n, selfDummy)));
      end qty2num;
    end '/';

  end kPag;
  annotation (Commands(executeCall=QCalc.Units.setup()
        "Re-initialize the units."));
end Interfaces;
