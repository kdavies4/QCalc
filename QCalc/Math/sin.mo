within QCalc.Math;
function sin "Sine"
  extends Modelica.Math.Icons.AxisLeft;

  input Q.Angle u annotation (Dialog(__Dymola_label="<html><i>u</i></html>"));
  output Real y annotation (Dialog(__Dymola_label="<html><i>y</i></html>"));

algorithm
  y := Modelica.Math.sin(u/U.rad);

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
        Line(points={{-80,0},{-68.7,34.2},{-61.5,53.1},{-55.1,66.4},{-49.4,74.6},
              {-43.8,79.1},{-38.2,79.8},{-32.6,76.6},{-26.9,69.7},{-21.3,59.4},
              {-14.9,44.1},{-6.83,21.2},{10.1,-30.8},{17.3,-50.2},{23.7,-64.2},
              {29.3,-73.1},{35,-78.4},{40.6,-80},{46.2,-77.6},{51.9,-71.5},{
              57.5,-61.9},{63.9,-47.2},{72,-24.8},{80,0}}, color={0,0,0}),
        Text(
          extent={{12,84},{84,36}},
          lineColor={192,192,192},
          textString="sin")}),
    Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,
            100}}), graphics={Line(points={{-100,0},{84,0}}, color={95,95,95}),
          Polygon(
          points={{100,0},{84,6},{84,-6},{100,0}},
          lineColor={95,95,95},
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid)}),
    Documentation(info="<html>
<p>
This function returns <i>y</i> = sin(<i>u</i>), where <i>u</i> is an angle.
</p>
</html>"));
end sin;
