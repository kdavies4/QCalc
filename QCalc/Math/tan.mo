within QCalc.Math;
function tan
  "<html>Tangent (<i>u</i> shall not be -&pi;/2 rad, &pi;/2  rad, 3&pi;/2 rad, &hellip;)</html>"
  extends Modelica.Math.Icons.AxisCenter;

  input Q.Angle u annotation (Dialog(__Dymola_label="<html><i>u</i></html>"));
  output Real y annotation (Dialog(__Dymola_label="<html><i>y</i></html>"));

algorithm
  y := Modelica.Math.tan(u/U.rad);

  annotation (
    Inline=true,
    Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,
            100}}), graphics={
        Line(points={{-90,0},{68,0}}, color={192,192,192}),
        Polygon(
          points={{90,0},{68,8},{68,-8},{90,0}},
          lineColor={192,192,192},
          fillColor={192,192,192},
          fillPattern=FillPattern.Solid),
        Line(points={{-80,-80},{-78.4,-68.4},{-76.8,-59.7},{-74.4,-50},{-71.2,-40.9},
              {-67.1,-33},{-60.7,-24.8},{-51.1,-17.2},{-35.8,-9.98},{-4.42,-1.07},
              {33.4,9.12},{49.4,16.2},{59.1,23.2},{65.5,30.6},{70.4,39.1},{73.6,
              47.4},{76,56.1},{77.6,63.8},{80,80}}, color={0,0,0}),
        Text(
          extent={{-90,72},{-18,24}},
          lineColor={192,192,192},
          textString="tan")}),
    Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,
            100}}), graphics={Line(points={{-100,0},{84,0}}, color={95,95,95}),
          Polygon(
          points={{98,0},{82,6},{82,-6},{98,0}},
          lineColor={95,95,95},
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid)}),
    Documentation(info="<html>
<p>
This function returns <i>y</i> = tan(<i>u</i>), where <i>u</i> is an angle
(if <i>u</i> is a multiple of (<i>n</i> - 1/2)&nbsp;&pi;&nbsp;rad, then <i>y</i> = tan(<i>u</i>) is &plusmn;&infin;).
</p>
</html>"));
end tan;
