within QCalc;
package Blocks "Input/output blocks to convert units"
extends QCalc.Icons.Package;


annotation (Documentation(info="
<html>
    <p><b>Licensed by the Hawaii Natural Energy Institute under the Modelica License 2</b>
    <br>Copyright &copy; 2009&ndash;2014, 
    <a href=\"http://www.hnei.hawaii.edu/\">Hawaii Natural Energy Institute</a> and 
    <a href=\"http://www.gtrc.gatech.edu/\">Georgia Tech Research Corporation</a>.</p>

    <p><i>This Modelica package is <u>free</u> software and the use is completely
    at <u>your own risk</u>; it can be redistributed and/or modified under the
    terms of the Modelica License 2. For license conditions (including the
    disclaimer of warranty) see
    <a href=\"modelica://QCalc.UsersGuide.License\">QCalc.UsersGuide.License</a>
    or visit <a href=\"http://www.modelica.org/licenses/ModelicaLicense2\">http://www.modelica.org/licenses/ModelicaLicense2</a>.</i></p></html>"),
    Icon(graphics={
      Rectangle(
        origin={0,35.1488},
        fillColor={255,255,255},
        extent={{-30.0,-20.1488},{30.0,20.1488}}),
      Line(origin={51.25,0}, points={{-21.25,35.0},{13.75,35.0},{13.75,-35.0},{
            -6.25,-35.0}}),
      Rectangle(
        origin={0,-34.8512},
        fillColor={255,255,255},
        extent={{-30.0,-20.1488},{30.0,20.1488}}),
      Line(origin={-51.25,0}, points={{21.25,-35.0},{-13.75,-35.0},{-13.75,35.0},
            {6.25,35.0}}),
      Polygon(
        origin={-40,35},
        pattern=LinePattern.None,
        fillPattern=FillPattern.Solid,
        points={{10.0,0.0},{-5.0,5.0},{-5.0,-5.0}}),
      Polygon(
        origin={40,-35},
        pattern=LinePattern.None,
        fillPattern=FillPattern.Solid,
        points={{-10.0,0.0},{5.0,5.0},{5.0,-5.0}})}));
end Blocks;
