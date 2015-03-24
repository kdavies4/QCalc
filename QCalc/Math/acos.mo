within QCalc.Math;
function acos "<html>Inverse cosine (-1 &le; <i>u</i> &le; 1)</html>"
  extends Modelica.Math.Icons.AxisCenter;

  input Real u annotation (Dialog(__Dymola_label="<html><i>u</i></html>"));
  output Q.Angle y annotation (Dialog(__Dymola_label="<html><i>y</i></html>"));

algorithm
  y := Modelica.Math.acos(u)*U.rad;

  annotation (
    Inline=true,
    Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,
            100}}), graphics={
        Line(points={{-90,-80},{68,-80}}, color={192,192,192}),
        Polygon(
          points={{90,-80},{68,-72},{68,-88},{90,-80}},
          lineColor={192,192,192},
          fillColor={192,192,192},
          fillPattern=FillPattern.Solid),
        Line(points={{-80,80},{-79.2,72.8},{-77.6,67.5},{-73.6,59.4},{-66.3,
              49.8},{-53.5,37.3},{-30.2,19.7},{37.4,-24.8},{57.5,-40.8},{68.7,-52.7},
              {75.2,-62.2},{77.6,-67.5},{80,-80}}, color={0,0,0}),
        Text(
          extent={{-86,-14},{-14,-62}},
          lineColor={192,192,192},
          textString="acos")}),
    Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,
            100}}), graphics={Line(points={{-100,-80},{84,-80}}, color={95,95,
          95}),Polygon(
          points={{98,-80},{82,-74},{82,-86},{98,-80}},
          lineColor={95,95,95},
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid)}),
    Documentation(info="<html>
<p>
This function returns <i>y</i> = acos(<i>u</i>), with -1 &le; <i>u</i> &le; +1, where <i>y</i> is an angle.
</p>
</html>"));
end acos;
