within QCalcTests;
package Utilities "General supporting functions"
  extends QCalc.Icons.Package;

  function print2 "Print a string to the standard output as well as a file"

    import Modelica.Utilities.Streams.print;

    input String string="" "String to be printed";
    input String fileName=""
      "File where to print (empty string is the terminal)" annotation (Dialog(
          __Dymola_saveSelector(filter="Text files (*.txt)", caption=
              "Text file to store the output of print(..)")));

  algorithm
    print(string);
    print(string, fileName);
    annotation (uses(Modelica(version="3.2")));
  end print2;
  annotation (Documentation(info="
<html>
  <p><b>Licensed by the Hawaii Natural Energy Institute under the Modelica License 2</b><br>
Copyright &copy; 2007&ndash;2014, <a href=\"http://www.hnei.hawaii.edu/\">Hawaii Natural Energy Institute</a> and <a href=\"http://www.gtrc.gatech.edu/\">Georgia Tech Research Corporation</a>.</p>

<p><i>This Modelica package is <u>free</u> software and the use is completely at <u>your own risk</u>;
it can be redistributed and/or modified under the terms of the Modelica License 2. For license conditions (including the
disclaimer of warranty) see <a href=\"modelica://QCalc.UsersGuide.License\">
QCalc.UsersGuide.License</a> or visit <a href=\"http://www.modelica.org/licenses/ModelicaLicense2\">
http://www.modelica.org/licenses/ModelicaLicense2</a>.</i></p>
</html>"));
end Utilities;
