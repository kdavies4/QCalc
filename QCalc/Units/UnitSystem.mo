within QCalc.Units;
record UnitSystem "Base constants for the unit system"
  import QCalc;
  extends Bases.Base(
    final R_inf=QCalc.Units.R_inf,
    final c=QCalc.Units.c,
    final k_J=QCalc.Units.k_J,
    final R_K=QCalc.Units.R_K,
    final k_F=QCalc.Units.k_F,
    final R=QCalc.Units.R,
    final rational=QCalc.Units.base.rational);

  annotation (Documentation(info="<html><p>Drop this record into your top-level model
  to record the values of the base constants with the simulation results.  It is necessary to 
  know the values of the base constants in order to interpret the results.</p></html>"));
end UnitSystem;
