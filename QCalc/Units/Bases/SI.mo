within QCalc.Units.Bases;
record SI "Base constants for SI"
  extends Base(
    final R_inf=10973731.568539*2*pi,
    final c=299792458,
    final k_J=483597.870e9*2*pi,
    final R_K=25812.8074434/(2*pi),
    final k_F=96485.3365,
    final R=8.3144621,
    final k_Aprime=2*pi*R_K/c);
  annotation (Documentation(info="<html>
<p>Please see the documentation for the
  <a href=\"modelica://QCalc.Units\">Units</a> package.</p></html>"), Commands(
        executeCall=QCalc.Units.setup() "Re-initialize the units."));
end SI;
