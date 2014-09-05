within QCalc.Units;
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


annotation (Commands(executeCall=QCalc.Units.setup() "Re-initialize the units."));
end Prefixes;
