within QCalcTests;
package Blocks
  extends QCalc.Icons.Package;

  package Tests
    extends Icons.TestPackage;

    function runAll
      "<html>Run all of the test functions and models for <a href=\"modelica://QCalc.Units\">QCalc.Blocks</a></html>"
      import QCalcTests.Utilities.print2;
      extends QCalc.Icons.Function;

      input String logFile="BlocksTestLog.md" "Name of the log file";
      input String space="" "Leading space in the log entry";
      output Boolean ok "true, if all tests passed";

    protected
      String space2 "Leading space";

    algorithm
      print2(space + "- QCalc.Blocks", logFile);
      space2 := space + "  ";
      ok := simulateModel("QCalcTests.Blocks.Tests.testRoundtrip(logFile=\"" +
        logFile + "\", space=\"" + space2 + "\")");
      annotation (Documentation(info="<html><p>This function call will fail if any of the functions return an
  incorrect result.  It will return <code>true</code> if all of the functions pass.
  The input is the name of a log file where the results should be written.</p></html>"));
    end runAll;

    model testRoundtrip "Test nonscalar units via roundtrip calculation"
      import XogenyTest.assertValue;
      import QCalcTests.Utilities.print2;
      extends QCalc.Icons.Example;

      parameter String logFile="UnitsTestLog.md" "Name of the log file";
      parameter String space="" "Leading space in the log entry";

      Modelica.Blocks.Sources.Constant const(k=1)
        annotation (Placement(transformation(extent={{-50,60},{-30,80}})));
      QCalc.Blocks.Num2Qty degC_n2q(redeclare QCalc.Units.Interfaces.degC u)
        annotation (Placement(transformation(extent={{-10,60},{10,80}})));
      QCalc.Blocks.Qty2Num degC_q2n(redeclare QCalc.Units.Interfaces.degC u)
        annotation (Placement(transformation(extent={{30,60},{50,80}})));

      QCalc.Blocks.Num2Qty Np_n2q(redeclare QCalc.Units.Interfaces.Np u)
        annotation (Placement(transformation(extent={{-10,30},{10,50}})));
      QCalc.Blocks.Qty2Num Np_q2n(redeclare QCalc.Units.Interfaces.Np u)
        annotation (Placement(transformation(extent={{30,30},{50,50}})));
      QCalc.Blocks.Num2Qty B_n2q(redeclare QCalc.Units.Interfaces.B u)
        annotation (Placement(transformation(extent={{-10,0},{10,20}})));
      QCalc.Blocks.Qty2Num B_q2n(redeclare QCalc.Units.Interfaces.B u)
        annotation (Placement(transformation(extent={{30,0},{50,20}})));
      QCalc.Blocks.Num2Qty dB_n2q(redeclare QCalc.Units.Interfaces.dB u)
        annotation (Placement(transformation(extent={{-10,-30},{10,-10}})));
      QCalc.Blocks.Qty2Num dB_q2n(redeclare QCalc.Units.Interfaces.dB u)
        annotation (Placement(transformation(extent={{30,-30},{50,-10}})));
      QCalc.Blocks.Num2Qty kPag_n2q(redeclare QCalc.Units.Interfaces.kPag u)
        annotation (Placement(transformation(extent={{-10,-60},{10,-40}})));
      QCalc.Blocks.Qty2Num kPag_q2n(redeclare QCalc.Units.Interfaces.kPag u)
        annotation (Placement(transformation(extent={{30,-60},{50,-40}})));

    initial equation
      print2(space + "- Model with units", logFile);

    equation
      assertValue(degC_q2n.n, const.k);
      assertValue(Np_q2n.n, const.k);
      assertValue(B_q2n.n, const.k);
      assertValue(dB_q2n.n, const.k);
      assertValue(kPag_q2n.n, const.k);
      connect(const.y, degC_n2q.n) annotation (Line(
          points={{-29,70},{-12,70}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(degC_n2q.q, degC_q2n.q) annotation (Line(
          points={{11,70},{28,70}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Np_n2q.q, Np_q2n.q) annotation (Line(
          points={{11,40},{28,40}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(B_n2q.q, B_q2n.q) annotation (Line(
          points={{11,10},{28,10}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(dB_n2q.q, dB_q2n.q) annotation (Line(
          points={{11,-20},{28,-20}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(kPag_n2q.q, kPag_q2n.q) annotation (Line(
          points={{11,-50},{28,-50}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(B_n2q.n, const.y) annotation (Line(
          points={{-12,10},{-20,10},{-20,70},{-29,70}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(Np_n2q.n, const.y) annotation (Line(
          points={{-12,40},{-20,40},{-20,70},{-29,70}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(dB_n2q.n, const.y) annotation (Line(
          points={{-12,-20},{-20,-20},{-20,70},{-29,70}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(kPag_n2q.n, const.y) annotation (Line(
          points={{-12,-50},{-20,-50},{-20,70},{-29,70}},
          color={0,0,127},
          smooth=Smooth.None));
      annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{
                -100,-100},{100,100}})));
    end testRoundtrip;
  end Tests;
end Blocks;
