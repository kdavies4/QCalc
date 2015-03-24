within QCalc.Math;
function asin "<html>Inverse sine (-1 &le; <i>u</i> &le; 1)</html>"
  extends Modelica.Math.Icons.AxisCenter;

  input Real u annotation (Dialog(__Dymola_label="<html><i>u</i></html>"));
  output Q.Angle y annotation (Dialog(__Dymola_label="<html><i>y</i></html>"));

algorithm
  y := Modelica.Math.asin(u)*U.rad;

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
        Line(points={{-80,-80},{-79.2,-72.8},{-77.6,-67.5},{-73.6,-59.4},{-66.3,
              -49.8},{-53.5,-37.3},{-30.2,-19.7},{37.4,24.8},{57.5,40.8},{68.7,
              52.7},{75.2,62.2},{77.6,67.5},{80,80}}, color={0,0,0}),
        Text(
          extent={{-88,78},{-16,30}},
          lineColor={192,192,192},
          textString="asin")}),
    Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,
            100}}), graphics={Line(points={{-100,0},{84,0}}, color={95,95,95}),
          Polygon(
          points={{98,0},{82,6},{82,-6},{98,0}},
          lineColor={95,95,95},
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid)}),
    Documentation(info="<html>
<p>
This function returns <i>y</i> = asin(<i>u</i>), with -1 &le; <i>u</i> &le; +1, where <i>y</i> is an angle.
</p>
</html>"));
end asin;
