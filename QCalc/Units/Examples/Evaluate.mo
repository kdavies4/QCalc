within QCalc.Units.Examples;
model Evaluate "Evaluate the values assigned to constants and units"
  import QCalc;

  extends QCalc.Icons.Example;

  // -------------------------------------------------------------------------
  // Mathematical constants

  final constant Q.Number pi=QCalc.Units.pi "pi";

  // -------------------------------------------------------------------------
  // Base physical constants
  final constant Q.Wavenumber R_inf=QCalc.Units.R_inf "Rydberg constant";
  final constant Q.Velocity c=QCalc.Units.c "speed of light";
  final constant Q.MagneticFluxReciprocal k_J=QCalc.Units.k_J
    "Josephson constant";
  final constant Q.MagneticFluxSpecific R_K=QCalc.Units.R_K
    "von Klitzing constant";
  final constant Q.Number k_F=QCalc.Units.k_F "Faraday constant";
  final constant Q.Number R=QCalc.Units.R "gas constant";
  final constant Q.LengthSpecificMassSpecific k_Aprime=QCalc.Units.k_Aprime
    "modified Ampere constant";

  // -------------------------------------------------------------------------
  // Derived physical constants

  final constant Q.MagneticFlux Phi_0=QCalc.Units.Phi_0
    "magnetic flux quantum (&Phi;<sub>0</sub>)";
  final constant Q.Conductance G_0=QCalc.Units.G_0 "conductance quantum";
  final constant Q.Amount e=QCalc.Units.e "elementary charge";
  final constant Q.MomentumRotational h=QCalc.Units.h "Planck constant";
  final constant Q.AmountReciprocal N_A=QCalc.Units.N_A "Avogadro constant";
  final constant Q.Amount k_B=QCalc.Units.k_B "Boltzmann constant";
  final constant Q.Angle cyc=QCalc.Units.cyc "cycle";
  final constant Q.PowerArea c_1=QCalc.Units.c_1 "first radiation constant";
  final constant Q.PotentialPerWavenumber c_2=QCalc.Units.c_2
    "second radiation constant";
  final constant Q.MagneticFluxReciprocal c_3_f=QCalc.Units.c_3_f
    "Wien frequency displacement constant";
  final constant Q.PotentialPerWavenumber c_3_lambda=QCalc.Units.c_3_lambda
    "Wien wavelength displacement constant";
  final constant Q.PowerAreicPerPotential4 sigma=QCalc.Units.sigma
    "Stefan-Boltzmann constant";
  final constant Q.Energy Ry=QCalc.Units.Ry "Rydberg energy";
  final constant Q.Energy Ha=QCalc.Units.Ha "Hartree energy";
  final constant Q.Temperature T_H=QCalc.Units.T_H "Hartree temperature";

  // -------------------------------------------------------------------------
  // Mathematical relations
  final constant Q.Angle rad=QCalc.Units.rad "radian";

  // -------------------------------------------------------------------------
  // Empirical relations
  final constant Q.Length m=QCalc.Units.m "metre";
  final constant Q.Time s=QCalc.Units.s "second";
  final constant Q.MagneticFlux Wb=QCalc.Units.Wb "weber";
  final constant Q.Conductance S=QCalc.Units.S "siemens";
  final constant Q.Amount mol=QCalc.Units.mol "mole";
  final constant Q.Potential K=QCalc.Units.K "kelvin";

  // -------------------------------------------------------------------------
  // SI units decoupled from the base constants
  final constant Q.LuminousIntensity cd=QCalc.Units.cd "candela";

  // -------------------------------------------------------------------------
  // SI base units [BIPM2006, Table 1] and intermediate units
  final constant Q.Frequency Hz=QCalc.Units.Hz "hertz";
  final constant Q.Potential V=QCalc.Units.V "volt";
  final constant Q.Current A=QCalc.Units.A "ampere";
  final constant Q.Amount C=QCalc.Units.C "coulomb";
  final constant Q.Energy J=QCalc.Units.J "joule";
  final constant Q.Velocity2 Gy=QCalc.Units.Gy "gray";
  final constant Q.Mass kg=QCalc.Units.kg "kilogram ";
  final constant Q.Mass g=QCalc.Units.g "gram ";

  // -------------------------------------------------------------------------
  // SI derived units with special names and symbols [BIPM2006, Table 3]
  final constant Q.Angle2 sr=QCalc.Units.sr "steradian";
  final constant Q.Power lm=QCalc.Units.lm "lumen";
  final constant Q.Power W=QCalc.Units.W "watt";
  final constant Q.Force N=QCalc.Units.N "newton";
  final constant Q.Pressure Pa=QCalc.Units.Pa "pascal";
  final constant Q.MagneticFluxAreic T=QCalc.Units.T "tesla";
  final constant Q.PowerAreic lx=QCalc.Units.lx "lux";
  final constant Q.Capacitance F=QCalc.Units.F "farad";
  final constant Q.Resistance ohm=QCalc.Units.ohm "ohm";
  final constant Q.Inductance H=QCalc.Units.H "henry";
  final constant Q.Current kat=QCalc.Units.kat "katal";
  final constant Q.Velocity2 Sv=QCalc.Units.Sv "sievert";
  final constant Q.TimeReciprocal Bq=QCalc.Units.Bq "becquerel";

  // -------------------------------------------------------------------------
  // Non-SI units accepted for use with SI units [BIPM2006, Table 6]
  final constant Q.Time min=QCalc.Units.min "minute";
  final constant Q.Time hr=QCalc.Units.hr "hour";
  final constant Q.Time d=QCalc.Units.d "day";
  final constant Q.Angle deg=QCalc.Units.deg "degree";
  final constant Q.Volume L=QCalc.Units.L "liter";

  // -------------------------------------------------------------------------
  // Other non-SI units [BIPM2006, Table 8]
  final constant Q.Acceleration g_0=QCalc.Units.g_0 "standard gravity";
  final constant Q.Length cm=QCalc.Units.cm "centimetre";
  final constant Q.Volume cc=QCalc.Units.cc "cubic centimetre";
  final constant Q.PressureLineic Hg=QCalc.Units.Hg
    "force per volume of mercury under standard gravity";
  final constant Q.Length mm=QCalc.Units.mm "millimetre";
  final constant Q.Pressure mmHg=mm*Hg "millimetre of mercury";
  final constant Q.Pressure kPa=QCalc.Units.kPa "kilopascal";
  final constant Q.Pressure bar=QCalc.Units.bar "bar";
  final constant Q.Area b=QCalc.Units.b "barn";
  final constant Q.Length angstrom=QCalc.Units.angstrom "angstrom";
  final constant Q.Length nmi=QCalc.Units.nmi "nautical mile";
  final constant Q.Velocity kn=QCalc.Units.kn "knot";

  // -------------------------------------------------------------------------
  // Non-SI units associated with the CGS and the CGS-Gaussian system of units
  // [BIPM2006, Table 9]
  final constant Q.Acceleration Gal=QCalc.Units.Gal "gal";
  final constant Q.Force dyn=QCalc.Units.dyn "dyne";
  final constant Q.Energy erg=QCalc.Units.erg "erg";
  final constant Q.Pressure Ba=QCalc.Units.Ba "barye";
  final constant Q.Viscosity P=QCalc.Units.P "poise";
  final constant Q.Diffusivity St=QCalc.Units.St "stokes";
  final constant Q.Luminance sb=QCalc.Units.sb "stilb";
  final constant Q.Illuminance ph=QCalc.Units.ph "phot";
  final constant Q.Current abA=QCalc.Units.abA "abampere";
  final constant Q.Amount abC=QCalc.Units.abC "abcoloumb";
  final constant Q.Potential abV=QCalc.Units.abV "abvolt";
  final constant Q.MagneticFlux Mx=QCalc.Units.Mx "maxwell";
  final constant Q.MagneticFluxAreic Gs=QCalc.Units.Gs "gauss";
  final constant Q.MagneticFlux pole=QCalc.Units.pole "unit pole";
  final constant Q.MagneticFieldAux Oe=QCalc.Units.Oe "oersted";
  final constant Q.Capacitance abF=QCalc.Units.abF "abfarad";
  final constant Q.Resistance abohm=QCalc.Units.abohm "abohm";
  final constant Q.Inductance abH=QCalc.Units.abH "abhenry";

  // -------------------------------------------------------------------------
  // Constants related to Ampere's force law
  constant Q.LengthSpecificMassSpecific k_A=QCalc.Units.k_A "Ampere constant";
  constant Q.PermittivityReciprocal k_C=QCalc.Units.k_C "Coulomb constant";
  final constant Q.Permittivity epsilon_0=QCalc.Units.epsilon_0
    "electric constant";
  final constant Q.Permeability mu_0=QCalc.Units.mu_0 "magnetic constant ";
  final constant Q.Resistance Z_0=QCalc.Units.Z_0
    "characteristic impedance of vacuum";
  final constant Q.Angle alpha=QCalc.Units.alpha "fine-structure constant";
  final constant Q.Length a_0=QCalc.Units.a_0 "Bohr radius";
  final constant Q.Wavelength lambda_e=QCalc.Units.lambda_e
    "electron Compton wavelength";
  final constant Q.WavelengthVelocity kappa=QCalc.Units.kappa
    "quantum of circulation";
  final constant Q.MassSpecific m_e=QCalc.Units.m_e
    "specific electron rest mass";
  final constant Q.LengthSpecific r_e=QCalc.Units.r_e
    "specific classical electron radius";
  final constant Q.MagneticDipoleMoment mu_B=QCalc.Units.mu_B "Bohr magneton";
  final constant Q.Mass M_e=QCalc.Units.M_e "mass of an electron";
  final constant Q.Time t_H=QCalc.Units.t_H "Hartree time";
  final constant Q.Length l_n=QCalc.Units.l_n "natural unit of length";
  final constant Q.Time t_n=QCalc.Units.t_n "natural unit of time";

  // -------------------------------------------------------------------------
  // Other
  final constant Q.Time y=QCalc.Units.y "Julian year";
  final constant Q.Length ly=QCalc.Units.ly "light year";
  final constant Q.Length au=QCalc.Units.au "astronomical unit";
  final constant Q.Length pc=QCalc.Units.pc "parsec";
  final constant Q.Pressure atm=QCalc.Units.atm "atmosphere";
  final constant Q.Pressure Torr=QCalc.Units.Torr "torr";
  final constant Q.Energy Wh=QCalc.Units.Wh "watt hour";
  final constant Q.Energy eV=QCalc.Units.eV "electron volt";
  final constant Q.Angle2 sp=QCalc.Units.sp "spat";
  final constant Q.Frequency rpm=QCalc.Units.rpm "revolution per minute";
  final constant Q.Number '%'=QCalc.Units.'%' "percent";
  final constant Q.MagnetomotiveForce AT=QCalc.Units.AT "ampere-turn";
  final constant Q.Area D=QCalc.Units.D "darcy";
  final constant Q.Mass u=QCalc.Units.u "unified atomic mass unit";
  final constant Q.Concentration M=QCalc.Units.M "molar";

  annotation (Documentation(info="<html><p>This model may be used to calculate the values of the
  constants and units.</p>

<p>For more information, please see the documentation for the
  <a href=\"modelica://QCalc.Units\">Units</a> package.</p></html>"), Commands(
        executeCall=QCalc.Units.setup() "Re-initialize the units."));
end Evaluate;
