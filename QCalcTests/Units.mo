within QCalcTests;
package Units "Tests for QCalc.Units"
  extends QCalc.Icons.Package;
  package Tests
    extends Icons.TestPackage;

    function runAll
      "<html>Run all of the test functions and models for <a href=\"modelica://QCalc.Units\">QCalc.Units</a></html>"
      import QCalcTests.Utilities.print2;
      extends QCalc.Icons.Function;

      input String logFile="UnitsTestLog.md" "Name of the log file";
      input String space="" "Leading space in the log entry";
      output Boolean ok "true, if all tests passed";

    protected
      String space2 "Leading space";

    algorithm
      print2(space + "- QCalc.Units", logFile);
      space2 := space + "  ";
      ok := testMath(logFile, space2) and testBIPM(logFile, space2) and
        testNIST(logFile, space2) and testOther(logFile, space2) and
        simulateModel("QCalcTests.Units.Tests.testModel(logFile=\"" + logFile
         + "\", space=\"" + space2 + "\")");
      annotation (Documentation(info="<html><p>This function call will fail if any of the functions return an
  incorrect result.  It will return <code>true</code> if all of the functions pass.
  The input is the name of a log file where the results should be written.</p></html>"));
    end runAll;

    function testMath "Test the math constants and relations"

      import QCalcTests.Utilities.print2;
      import QCalc.Units.*;
      extends QCalc.Icons.Function;

      input String logFile="UnitsTestLog.md" "Name of the log file";
      input String space="" "Leading space in the log entry";
      output Boolean ok "true, if all tests passed";

    protected
      function test = XogenyTest.assertValue (final expected=1);

    algorithm
      print2(space + "- Math constants and relations", logFile);

      test(pi/3.14159265358979323846264338327950288419716939937510, name="1");
      // Value from http://en.wikipedia.org/wiki/Pi#Approximate_value
      test(cyc/(2*pi*rad), name="2");
      test(cyc/(360*deg), name="3");
      test(sp/(4*pi*sr), name="4");
      test('%'/0.01, name="5");

      ok := true;
      annotation (Documentation(info="<html><p>This function call will fail if any of the functions return an
  incorrect result.  It will return <code>true</code> if all of the functions pass.
  The input is the name of a log file where the results should be written.</p></html>"));
    end testMath;

    function testBIPM
      "<html>Test the [<a href=\"modelica://QCalc.UsersGuide.References.NIST2010\">BIPM2006</a>] relations</html>"

      import XogenyTest.assertValue;
      import QCalcTests.Utilities.print2;
      import QCalc.Units.*;
      extends QCalc.Icons.Function;

      input String logFile="UnitsTestLog.md" "Name of the log file";
      input String space="" "Leading space in the log entry";
      output Boolean ok "true, if all tests passed";

    protected
      function test = XogenyTest.assertValue (final expected=1);

    algorithm
      print2(space + "- BIPM relations", logFile);

      // -------------------------------------------------------------------------
      // Coherent derived units in the SI with special names and symbols
      // [BIPM2006, Table 3]
      test(sr/rad^2, name="Table 3: sr");
      // See the note below the definition of sr in QCalc.Units.
      test(Hz/(cyc/s), name="Table 3: Hz");
      // See the note below the definition of Hz in QCalc.Units re: inclusion of
      // cyc.
      test(N/(kg*m/s^2), name="Table 3: N");
      test(Pa/(N/m^2), name="Table 3: Pa");
      test(J/(N*m), name="Table 3: J");
      test(W/(J/s), name="Table 3: W");
      test(C/(A*s), name="Table 3: C");
      test(V/(W/A), name="Table 3: V");
      test(F/(C/V), name="Table 3: F");
      test(ohm/(V/A), name="Table 3: ohm");
      test(S/(A/V), name="Table 3: S");
      test(Wb*Hz/V, name="Table 3: Wb");
      // See the note below the definition of V in QCalc.Units re: Hz instead of 1/s.
      test(T/(Wb/m^2), name="Table 3: T");
      test(H/(ohm*s), name="Table 3: H");
      // See the note below the definition of H in QCalc.Units re: ohm*s instead of
      // Wb/A.
      // 
      // Celsius
      test(100*degC/(373.15*K), name="Table 3: degC: num2qty");
      test(1*degC/degC, name="Table 3: degC: qty2num")
        "via round-trip calculation";
      // 
      test(lm/(cd*sr), name="Table 3: lm");
      test(lx/(lm/m^2), name="Table 3: lx");
      test(Bq/(1/s), name="Table 3: Bq");
      test(Gy/(J/kg), name="Table 3: Gy");
      test(Sv/(J/kg), name="Table 3: Sv");
      test(kat/(mol/s), name="Table 3: kt");

      // -------------------------------------------------------------------------
      // SI prefixes [BIPM2006, Table 5]
      test(Prefixes.da/10, name="Table 5: da");
      test(Prefixes.h/1e2, name="Table 5: h");
      test(Prefixes.k/1e3, name="Table 5: k");
      test(Prefixes.M/1e6, name="Table 5: M");
      test(Prefixes.G/1e9, name="Table 5: G");
      test(Prefixes.T/1e12, name="Table 5: T");
      test(Prefixes.P/1e15, name="Table 5: P");
      test(Prefixes.E/1e18, name="Table 5: E");
      test(Prefixes.Z/1e21, name="Table 5: Z");
      test(Prefixes.Y/1e24, name="Table 5: Y");
      test(Prefixes.d/0.1, name="Table 5: d");
      test(Prefixes.c/1e-2, name="Table 5: c");
      test(Prefixes.m/1e-3, name="Table 5: m");
      test(Prefixes.u/1e-6, name="Table 5: u");
      test(Prefixes.n/1e-9, name="Table 5: n");
      test(Prefixes.p/1e-12, name="Table 5: p");
      test(Prefixes.f/1e-15, name="Table 5: f");
      test(Prefixes.a/1e-18, name="Table 5: a");
      test(Prefixes.z/1e-21, name="Table 5: z");
      test(Prefixes.y/1e-24, name="Table 5: y");

      // -------------------------------------------------------------------------
      // Non-SI units accepted for use with SI [BIPM2006, Table 6]
      test(min/(60*s), name="Table 6: min");
      test(hr/(60*min), name="Table 6: hr");
      test(d/(24*hr), name="Table 6: d");
      test(deg/((pi/180)*rad), name="Table 6: deg");
      test(arcmin/((1/60)*deg), name="Table 6: arcmin");
      test(arcsec/((1/60)*arcmin), name="Table 6: arcsec");
      test(ha/(1e4*m^2), name="Table 6: ha");
      test(L/(1e-3*m^3), name="Table 6: L");
      test(t/(1e3*kg), name="Table 6: t");

      // -------------------------------------------------------------------------
      // Non-SI units whose values in SI units must be obtained experimentally
      // [BIPM2006, Table 7]
      test(eV/(1.60217653e-19*J), name="Table 7: eV");
      test(u/(1.66053886e-27*kg), name="Table 7: u");
      test(au/(1.49597870691e11*m), name="Table 7: au");
      test(c/(299792458*m/s), name="Table 7: c");
      test(h*rad/(1.05457168e-34*J*s), name="Table 7: h");
      test(M_e/(9.1093826e-31*kg), name="Table 7: M_e");
      test(t_n/(1.2880886677e-21*s), name="Table 7: t_n");
      test(e/(1.60217653e-19*C), name="Table 7: e");
      test(a_0/(0.5291772108e-10*m), name="Table 7: a_0");
      test(Ha/(4.35974417e-18*J), name="Table 7: Ha");
      test(t_H/(2.418884326505e-17*s), name="Table 7: t_H");

      // -------------------------------------------------------------------------
      // Other non-SI units [BIPM2006, Table 8]
      test(bar/(1e5*Pa), name="Table 8: bar");
      test(mmHg/(133.322387415*Pa), name="Table 8: mmHg");
      // Additional precision from
      // http://en.wikipedia.org/wiki/Millimeter_of_mercury
      test(angstrom/(1e-10*m), name="Table 8: angstrom");
      test(nmi/(1852*m), name="Table 8: nmi");
      test(b/(1e-28*m^2), name="Table 8: b");
      test(kn/((1852/3600)*m/s), name="Table 8: kn");
      // 
      // neper
      test(1*Np/exp(1), name="Table 8: Np: num2qty");
      test(1*Np/Np, name="Table 8: Np: qty2num") "via round-trip calculation";
      // 
      // bel
      test(1*B/10, name="Table 8: B: num2qty");
      test(1*B/B, name="Table 8: B: qty2num") "via round-trip calculation";
      // 
      // decibel
      test(1*dB/10^0.1, name="Table 8: dB: num2qty");
      test(1*dB/dB, name="Table 8: dB: qty2num") "via round-trip calculation";

      // -------------------------------------------------------------------------
      // Non-SI units associated with the CGS and the CGS-Gaussian system of units
      // [BIPM2006, Table 9]
      test(erg/(1e-7*J), name="Table 9: erg");
      test(dyn/(1e-5*N), name="Table 9: dyn");
      test(P/(0.1*Pa*s), name="Table 9: P");
      test(St/(cm^2/s), name="Table 9: St");
      test(sb/(cd/cm^2), name="Table 9: sb");
      test(ph/(cd*sr/cm^2), name="Table 9: ph");
      test(Gal/(cm/s^2), name="Table 9: gal");
      test(Mx/(1e-8*Wb), name="Table 9: Mx");
      test(Gs/(1e-4*T), name="Table 9: Gs");
      test(Oe/(1e3/(4*pi)*AT/m), name="Table 9: Oe");

      ok := true;
      annotation (Documentation(info="<html><p>This function call will fail if any of the functions return an
  incorrect result.  It will return <code>true</code> if all of the functions pass.
  The input is the name of a log file where the results should be written.</p></html>"));
    end testBIPM;

    function testNIST
      "<html>Test the [<a href=\"modelica://QCalc.UsersGuide.References.NIST2010\">NIST2010</a>] definitions</html>"

      import QCalcTests.Utilities.print2;
      import QCalc.Units.*;
      extends QCalc.Icons.Function;

      input String logFile="UnitsTestLog.md" "Name of the log file";
      input String space="" "Leading space in the log entry";
      output Boolean ok "true, if all tests passed";

    protected
      function test = XogenyTest.assertValue (final expected=1);

    algorithm
      print2(space + "- NIST definitions", logFile);

      // Generated from QCalcTest/Resources/NIST.xls, 2014-8-14
      // Units of angle (cyc and rad) appear throughout the tests below because
      // QCalc is explicit in angle (see QCalc.Units).
      test(u/(1.660538921e-27*kg), name="atomic mass constant");
      test(u*c^2/(1.492417954e-10*J), name=
        "atomic mass constant energy equivalent");
      test(u*c^2/(931.494061*Prefixes.M*eV), name=
        "atomic mass constant energy equivalent in MeV");
      test(u*c^2/(931.494061e6*eV), name=
        "atomic mass unit-electron volt relationship");
      test(u*c^2/(3.4231776845e7*Ha), name=
        "atomic mass unit-hartree relationship");
      test(u*c^2/h/(2.2523427168e23*Hz), name=
        "atomic mass unit-hertz relationship");
      test(u*c/(h*cyc)/(7.5130066042e14*m^(-1)), name=
        "atomic mass unit-inverse meter relationship");
      test(u*c^2/(1.492417954e-10*J), name=
        "atomic mass unit-joule relationship");
      test(u*c^2/k_B/(1.08095408e13*K), name=
        "atomic mass unit-kelvin relationship");
      test(u/(1.660538921e-27*kg), name=
        "atomic mass unit-kilogram relationship");
      test(M_e*a_0^2/t_H/(1.054571726e-34*J*s), name="atomic unit of action");
      test(e/(1.602176565e-19*C), name="atomic unit of charge");
      test(e/a_0^3/(1.081202338e12*C*m^(-3)), name=
        "atomic unit of charge density");
      test(e/t_H/(6.62361795e-3*A), name="atomic unit of current");
      test(e*a_0/(8.47835326e-30*C*m), name=
        "atomic unit of electric dipole mom.");
      test(M_e*a_0/(t_H^2*e)/(5.14220652e11*V*m^(-1)), name=
        "atomic unit of electric field");
      test(M_e/(t_H^2*e)/(9.71736200e21*V*m^(-2)), name=
        "atomic unit of electric field gradient");
      test(e^2*t_H^2/M_e/(1.6487772754e-41*C^2*m^2*J^(-1)), name=
        "atomic unit of electric polarizability");
      test(M_e*a_0^2/(t_H^2*e)/(27.21138505*V), name=
        "atomic unit of electric potential");
      test(e*a_0^2/(4.486551331e-40*C*m^2), name=
        "atomic unit of electric quadrupole mom.");
      test(M_e*(a_0/t_H)^2/(4.35974434e-18*J), name="atomic unit of energy");
      test(M_e*a_0/t_H^2/(8.23872278e-8*N), name="atomic unit of force");
      test(a_0/(0.52917721092e-10*m), name="atomic unit of length");
      test(e*a_0^2*cyc/t_H/(1.854801936e-23*J*T^(-1)), name=
        "atomic unit of mag. dipole mom.");
      test(M_e/(cyc*e*t_H)/(2.350517464e5*T), name=
        "atomic unit of mag. flux density");
      test((cyc*a_0*e)^2/M_e/(7.891036607e-29*J*T^(-2)), name=
        "atomic unit of magnetizability");
      test(M_e/(9.10938291e-31*kg), name="atomic unit of mass");
      test(M_e*a_0/t_H/(1.992851740e-24*kg*m*s^(-1)), name=
        "atomic unit of mom.um");
      test(e^2*t_H^2/(M_e*a_0^3)/(1.112650056e-10*F*m^(-1)), name=
        "atomic unit of permittivity");
      test(t_H/(2.418884326502e-17*s), name="atomic unit of time");
      test(a_0/t_H/(2.18769126379e6*m*s^(-1)), name="atomic unit of velocity");
      test(N_A/(6.02214129e23/mol), name="Avogadro constant");
      test(mu_B/(927.400968e-26*J*T^(-1)), name="Bohr magneton");
      test(mu_B/(5.7883818066e-5*eV*T^(-1)), name="Bohr magneton in eV/T");
      test(mu_B/h/(13.99624555e9*Hz*T^(-1)), name="Bohr magneton in Hz/T");
      test(mu_B/(h*cyc*c)/(46.6864498*m^(-1)*T^(-1)), name=
        "Bohr magneton in inverse meters per tesla");
      test(mu_B/k_B/(0.67171388*K*T^(-1)), name="Bohr magneton in K/T");
      test(a_0/(0.52917721092e-10*m), name="Bohr radius");
      test(k_B/(1.3806488e-23*J/K), name="Boltzmann constant");
      test(k_B/(8.6173324e-5*eV/K), name="Boltzmann constant in eV/K");
      test(k_B/h/(2.0836618e10*Hz/K), name="Boltzmann constant in Hz/K");
      test(k_B/(h*cyc*c)/(69.503476/(m*K)), name=
        "Boltzmann constant in inverse meters per kelvin");
      test(Z_0*cyc/(376.730313461*ohm), name=
        "characteristic impedance of vacuum");
      test(r_e*e/(2.8179403267e-15*m), name="classical electron radius");
      test(lambda_e*cyc/(2.4263102389e-12*m), name="Compton wavelength");
      test(lambda_e*rad/(386.15926800e-15*m), name=
        "Compton wavelength over 2 pi");
      test(G_0/cyc/(7.7480917346e-5*S), name="conductance quantum");
      test(k_J/(483597.9e9*Hz/V), name=
        "conventional value of Josephson constant");
      test(R_K*cyc/(25812.807*ohm), name=
        "conventional value of von Klitzing constant");
      test(epsilon_0/(8.854187817e-12*F/m), name="electric constant");
      test(M_e/(9.10938291e-31*kg), name="electron mass");
      test(M_e*c^2/(8.18710506e-14*J), name="electron mass energy equivalent");
      test(M_e*c^2/(0.510998928*Prefixes.M*eV), name=
        "electron mass energy equivalent in MeV");
      test(M_e/(5.4857990946e-4*u), name="electron mass in u");
      test(m_e/(5.4857990946e-7*kg*mol^(-1)), name="electron molar mass");
      test(eV/(1.602176565e-19*J), name="electron volt");
      test(eV/(3.674932379e-2*Ha), name="electron volt-hartree relationship");
      test(eV/h/(2.417989348e14*Hz), name="electron volt-hertz relationship");
      test(eV/(h*cyc*c)/(8.06554429e5/m), name=
        "electron volt-inverse meter relationship");
      test(eV/(1.602176565e-19*J), name="electron volt-joule relationship");
      test(eV/k_B/(1.1604519e4*K), name="electron volt-kelvin relationship");
      test(eV/c^2/(1.782661845e-36*kg), name=
        "electron volt-kilogram relationship");
      test(e/(1.602176565e-19*C), name="elementary charge");
      test(e/(h*cyc)/(2.417989348e14*A/J), name="elementary charge over h");
      test(k_F/(96485.3365*C/mol), name="Faraday constant");
      test(alpha/rad/7.2973525698e-3, name="fine-structure constant");
      test(c_1*cyc^4/(3.74177153e-16*W*m^2), name="first radiation constant");
      test(c_1*cyc^4*4/sp/(1.191042869e-16*W*m^2/sr), name=
        "first radiation constant for spectral radiance");
      test(Ha/(4.35974434e-18*J), name="Hartree energy");
      test(Ha/(27.21138505*eV), name="Hartree energy in eV");
      test(Ha/c^2/(2.9212623246e-8*u), name=
        "hartree-atomic mass unit relationship");
      test(Ha/(27.21138505*eV), name="hartree-electron volt relationship");
      test(Ha/h/(6.579683920729e15*Hz), name="hartree-hertz relationship");
      test(Ha/(h*cyc*c)/(2.194746313708e7/m), name=
        "hartree-inverse meter relationship");
      test(Ha/(4.35974434e-18*J), name="hartree-joule relationship");
      test(T_H/(3.1577504e5*K), name="hartree-kelvin relationship");
      test(Ha/c^2/(4.85086979e-35*kg), name="hartree-kilogram relationship");
      test(Hz*h/c^2/(4.4398216689e-24*u), name=
        "hertz-atomic mass unit relationship");
      test(Hz*h/(4.135667516e-15*eV), name="hertz-electron volt relationship");
      test(Hz*h/(1.5198298460045e-16*Ha), name="hertz-hartree relationship");
      test(Hz/c/cyc/(3.335640951e-9/m), name="hertz-inverse meter relationship");
      test(Hz*h/(6.62606957e-34*J), name="hertz-joule relationship");
      test(Hz*h/k_B/(4.7992434e-11*K), name="hertz-kelvin relationship");
      test(Hz*h/c^2/(7.37249668e-51*kg), name="hertz-kilogram relationship");
      test(rad/alpha/137.035999074, name="inverse fine-structure constant");
      test((1/m)*h*cyc/c/(1.33102505120e-15*u), name=
        "inverse meter-atomic mass unit relationship");
      test(1/m*h*cyc*c/(1.239841930e-6*eV), name=
        "inverse meter-electron volt relationship");
      test(1/m*h*cyc*c/(4.556335252755e-8*Ha), name=
        "inverse meter-hartree relationship");
      test(cyc/m*c/(299792458*Hz), name="inverse meter-hertz relationship");
      test(1/m*h*cyc*c/(1.986445684e-25*J), name=
        "inverse meter-joule relationship");
      test(1/m*h*cyc*c/k_B/(1.4387770e-2*K), name=
        "inverse meter-kelvin relationship");
      test(1/m*h*cyc/c/(2.210218902e-42*kg), name=
        "inverse meter-kilogram relationship");
      test(cyc/G_0/(12906.4037217*ohm), name="inverse of conductance quantum");
      test(k_J/(483597.870e9*Hz/V), name="Josephson constant");
      test(J/c^2/(6.70053585e9*u), name="joule-atomic mass unit relationship");
      test(J/(6.24150934e18*eV), name="joule-electron volt relationship");
      test(J/(2.29371248e17*Ha), name="joule-hartree relationship");
      test(J/h/(1.509190311e33*Hz), name="joule-hertz relationship");
      test(J/(h*cyc*c)/(5.03411701e24/m), name=
        "joule-inverse meter relationship");
      test(J/k_B/(7.2429716e22*K), name="joule-kelvin relationship");
      test(J/c^2/(1.112650056e-17*kg), name="joule-kilogram relationship");
      test(K*k_B/c^2/(9.2510868e-14*u), name=
        "kelvin-atomic mass unit relationship");
      test(K*k_B/(8.6173324e-5*eV), name="kelvin-electron volt relationship");
      test(K*k_B/(3.1668114e-6*Ha), name="kelvin-hartree relationship");
      test(K*k_B/h/(2.0836618e10*Hz), name="kelvin-hertz relationship");
      test(K*k_B/(h*cyc*c)/(69.503476/m), name=
        "kelvin-inverse meter relationship");
      test(K*k_B/(1.3806488e-23*J), name="kelvin-joule relationship");
      test(K*k_B/c^2/(1.5361790e-40*kg), name="kelvin-kilogram relationship");
      test(kg/(6.02214129e26*u), name="kilogram-atomic mass unit relationship");
      test(kg*c^2/(5.60958885e35*eV), name=
        "kilogram-electron volt relationship");
      test(kg*c^2/(2.061485968e34*Ha), name="kilogram-hartree relationship");
      test(kg*c^2/h/(1.356392608e50*Hz), name="kilogram-hertz relationship");
      test(kg*c/(h*cyc)/(4.52443873e41/m), name=
        "kilogram-inverse meter relationship");
      test(kg*c^2/(8.987551787e16*J), name="kilogram-joule relationship");
      test(kg*c^2/k_B/(6.5096582e39*K), name="kilogram-kelvin relationship");
      test(100*kPa/(k_B*273.15*K)/(2.6516462e25/m^3), name=
        "Loschmidt constant (273.15 K, 100 kPa)");
      test(101.325*kPa/(k_B*273.15*K)/(2.6867805e25/m^3), name=
        "Loschmidt constant (273.15 K, 101.325 kPa)");
      test(mu_0*cyc^2/(12.566370614e-7*N/A^2), name="mag. constant");
      test(Phi_0/(2.067833758e-15*Wb), name="mag. flux quantum");
      test(R/(8.3144621*J/(mol*K)), name="molar gas constant");
      test(g/mol/(1e-3*kg/mol), name="molar mass constant");
      test(12*g/mol/(12e-3*kg/mol), name="molar mass of carbon-12");
      test(N_A*h*cyc/(3.9903127176e-10*J*s/mol), name="molar Planck constant");
      test(N_A*h*cyc*c/(0.119626565779*J*m/mol), name=
        "molar Planck constant times c");
      test(R*273.15*K/(100*kPa)/(22.710953e-3*m^3/mol), name=
        "molar volume of ideal gas (273.15 K, 100 kPa)");
      test(R*273.15*K/(101.325*kPa)/(22.413968e-3*m^3/mol), name=
        "molar volume of ideal gas (273.15 K, 101.325 kPa)");
      test(h*rad/(1.054571726e-34*J*s), name="natural unit of action");
      test(h*rad/(6.58211928e-16*eV*s), name="natural unit of action in eV s");
      test(M_e*c^2/(8.18710506e-14*J), name="natural unit of energy");
      test(M_e*c^2/(0.510998928*Prefixes.M*eV), name=
        "natural unit of energy in MeV");
      test(l_n/(386.15926800e-15*m), name="natural unit of length");
      test(M_e/(9.10938291e-31*kg), name="natural unit of mass");
      test(M_e*c/(2.73092429e-22*kg*m*s^(-1)), name="natural unit of mom.um");
      test(M_e*c/(0.510998928*Prefixes.M*eV/c), name=
        "natural unit of mom.um in MeV/c");
      test(t_n/(1.28808866833e-21*s), name="natural unit of time");
      test(c/(299792458*m*s^(-1)), name="natural unit of velocity");
      test(h*cyc/(6.62606957e-34*J*s), name="Planck constant");
      test(h*cyc/(4.135667516e-15*eV*s), name="Planck constant in eV s");
      test(h*rad/(1.054571726e-34*J*s), name="Planck constant over 2 pi");
      test(h*rad/(6.58211928e-16*eV*s), name=
        "Planck constant over 2 pi in eV s");
      test(h*rad*c/(197.3269718*Prefixes.M*eV*Prefixes.f*m), name=
        "Planck constant over 2 pi times c in MeV fm");
      test(kappa*cyc/(3.6369475520e-4*m^2/s), name="quantum of circulation");
      test(2*kappa*cyc/(7.2738951040e-4*m^2/s), name=
        "quantum of circulation times 2");
      test(R_inf/cyc/(10973731.568539/m), name="Rydberg constant");
      test(R_inf*c/(3.289841960364e15*Hz), name=
        "Rydberg constant times c in Hz");
      test(R_inf*h*c/(13.60569253*eV), name="Rydberg constant times hc in eV");
      test(R_inf*h*c/(2.179872171e-18*J), name="Rydberg constant times hc in J");
      test(c_2*cyc/(1.4387770e-2*m*K), name="second radiation constant");
      test(c/(299792458*m/s), name="speed of light in vacuum");
      test(g_0/(9.80665*m*s^(-2)), name="standard acceleration of gravity");
      test(atm/(101325*Pa), name="standard atmosphere");
      test(bar/(100000*Pa), name="standard-state pressure");
      test(sigma/(5.670373e-8*W/(m^2*K^4)), name="Stefan-Boltzmann constant");
      test(u/(1.660538921e-27*kg), name="unified atomic mass unit");
      test(R_K*cyc/(25812.8074434*ohm), name="von Klitzing constant");
      test(c_3_f/(5.8789254e10*Hz/K), name=
        "Wien frequency displacement law constant");
      test(c_3_lambda*cyc/(2.8977721e-3*m*K), name=
        "Wien wavelength displacement law constant");

      ok := true;
      annotation (Documentation(info="<html><p>This function call will fail if any of the functions return an
  incorrect result.  It will return <code>true</code> if all of the functions pass.
  The input is the name of a log file where the results should be written.</p></html>"));
    end testNIST;

    function testOther "Test other units and constants"
      import QCalcTests.Utilities.print2;
      import QCalc.Units.*;

      extends QCalc.Icons.Function;

      input String logFile="UnitsTestLog.md" "Name of the log file";
      input String space="" "Leading space in the log entry";
      output Boolean ok "true, if all tests passed";

    protected
      function test = XogenyTest.assertValue (final expected=1);

    algorithm
      print2(space + "- Other units and constants", logFile);

      test(k_A/(1e-7*N/A^2), name="k_A");
      test(k_C/(k_A*c^2), name="k_C");

      // kPag
      test(101.325*kPag/(2*atm), name="kPag.num2qty");
      test(1*kPag/kPag, name="kPag.qty2num") "via round-trip calculation";

      ok := true;
      annotation (Documentation(info="<html><p>This function call will fail if any of the functions return an
  incorrect result.  It will return <code>true</code> if all of the functions pass.
  The input is the name of a log file where the results should be written.</p></html>"));
    end testOther;

    model testModel "Test various unit calculations in a model"
      import XogenyTest.assertValue;
      import QCalcTests.Utilities.print2;
      extends QCalc.Icons.Example;

      parameter String logFile="UnitsTestLog.md" "Name of the log file";
      parameter String space="" "Leading space in the log entry";

    initial equation
      print2(space + "- Model with units", logFile);

    equation
      assertValue(
            U.atm + 50*U.kPa,
            50*U.kPag,
            name="kPag");
      assertValue(
            (0*U.degC + 100*U.K)/U.degC,
            100,
            name="degC");
      assertValue(
            (10/U.dB + 10/U.dB)*U.dB,
            100,
            name="dB");

    end testModel;
    annotation (Icon(graphics));
  end Tests;
end Units;
