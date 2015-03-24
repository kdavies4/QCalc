within QCalc.Math;
function cos "Cosine"
  extends Modelica.Math.Icons.AxisLeft;

  input Q.Angle u annotation (Dialog(__Dymola_label="<html><i>u</i></html>"));
  output Real y annotation (Dialog(__Dymola_label="<html><i>y</i></html>"));

algorithm
  y := Modelica.Math.cos(u/U.rad);

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
        Line(points={{-80,80},{-74.4,78.1},{-68.7,72.3},{-63.1,63},{-56.7,48.7},
              {-48.6,26.6},{-29.3,-32.5},{-22.1,-51.7},{-15.7,-65.3},{-10.1,-73.8},
              {-4.42,-78.8},{1.21,-79.9},{6.83,-77.1},{12.5,-70.6},{18.1,-60.6},
              {24.5,-45.7},{32.6,-23},{50.3,31.3},{57.5,50.7},{63.9,64.6},{69.5,
              73.4},{75.2,78.6},{80,80}}, color={0,0,0}),
        Text(
          extent={{-36,82},{36,34}},
          lineColor={192,192,192},
          textString="cos")}),
    Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,
            100}}), graphics={Line(points={{-100,0},{84,0}}, color={95,95,95}),
          Polygon(
          points={{98,0},{82,6},{82,-6},{98,0}},
          lineColor={95,95,95},
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid)}),
    Documentation(info="<html>
<p>
This function returns <i>y</i> = cos(<i>u</i>), where <i>u</i> is an angle.
</p>

</html>"));
end cos;
