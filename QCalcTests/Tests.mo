within QCalcTests;
package Tests "Top-level package of tests"
  extends Icons.TestPackage;

  function runAll
    "<html>Call all of the test functions and models for <a href=\"modelica://QCalc\">QCalc</a></html>"

    import Modelica.Utilities.Files;
    import Modelica.Utilities.Streams.print;
    import QCalcTests.Utilities.print2;
    extends QCalc.Icons.Function;

    input String logFile="QCalcTestLog.md" "Log file name";
    output Boolean ok "true, if all tests passed";

  algorithm
    print("\nResults are logged in " + Files.fullPathName(logFile));
    print2("\nTests have passed unless noted.", logFile);
    ok := Units.Tests.runAll(logFile) and Blocks.Tests.runAll(logFile);
    annotation (Documentation(info="<html><p>This function call will fail if any of the functions return an
  incorrect result.  It will return <code>true</code> if all of the functions pass.
  There are no inputs.</p></html>"));
  end runAll;
  annotation ( Icon(graphics={Polygon(
          points={{-70,0},{-44,0},{-24,-34},{50,56},{78,56},{-24,-74},{-70,0}},
          lineColor={75,138,73},
          smooth=Smooth.None,
          fillColor={75,138,73},
          fillPattern=FillPattern.Solid)}));
end Tests;
