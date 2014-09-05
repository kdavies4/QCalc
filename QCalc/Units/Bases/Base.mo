within QCalc.Units.Bases;
record Base "Base constants"
  extends Icons.Record;

  constant Quantities.Wavenumber R_inf=1
    "<html><a href=\"http://en.wikipedia.org/wiki/Rydberg_constant\">Rydberg constant</a> (<i>R</i><sub>&infin;</sub>)</html>";
  constant Quantities.Velocity c=1
    "<html><a href=\"http://en.wikipedia.org/wiki/Speed_of_light\">speed of light</a></html>";
  constant Quantities.MagneticFluxReciprocal k_J=1
    "<html><a href=\"http://en.wikipedia.org/wiki/Josephson_constant\">Josephson constant</a> (<i>k</i><sub>J</sub>)</html>";
  constant Quantities.MagneticFluxSpecific R_K=1
    "<html><a href=\"http://en.wikipedia.org/wiki/Von_Klitzing_constant\">von Klitzing constant</a> (<i>R</i><sub>K</sub>)</html>";
  constant Quantities.Number k_F=1
    "<html><a href=\"http://en.wikipedia.org/wiki/Faraday_constant\">Faraday constant</a> (<i>k</i><sub>F</sub>)</html>";
  constant Quantities.Number R=1
    "<html><a href=\"http://en.wikipedia.org/wiki/Gas_constant\">gas constant</a></html>";
  constant Quantities.LengthSpecificMassSpecific k_Aprime=1
    "<html>modified Ampere constant (<i>k</i><sub>A</sub> cyc/&alpha;)</html>";
  constant Boolean rational=true "true if the unit system is rationalized";

  annotation (Documentation(info="<html><p>Please see the notes in the Modelica code and the documentation of the
  <a href=\"modelica://QCalc.Units\">Units</a> package.</p></html>"), Commands(
        executeCall=QCalc.Units.setup() "Re-initialize the units."));
end Base;
