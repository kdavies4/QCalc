within QCalc.Math;
function atan "Inverse tangent"
  extends Modelica.Math.Icons.AxisCenter;

  input Real u annotation (Dialog(__Dymola_label="<html><i>u</i></html>"));
  output Q.Angle y annotation (Dialog(__Dymola_label="<html><i>y</i></html>"));

algorithm
  y := Modelica.Math.atan(u)*U.rad;

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
        Line(points={{-80,-80},{-52.7,-75.2},{-37.4,-69.7},{-26.9,-63},{-19.7,-55.2},
              {-14.1,-45.8},{-10.1,-36.4},{-6.03,-23.9},{-1.21,-5.06},{5.23,21},
              {9.25,34.1},{13.3,44.2},{18.1,52.9},{24.5,60.8},{33.4,67.6},{47,
              73.6},{69.5,78.6},{80,80}}, color={0,0,0}),
        Text(
          extent={{-86,68},{-14,20}},
          lineColor={192,192,192},
          textString="atan")}),
    Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,
            100}}), graphics={Line(points={{-100,0},{84,0}}, color={95,95,95}),
          Polygon(
          points={{96,0},{80,6},{80,-6},{96,0}},
          lineColor={95,95,95},
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid)}),
    Documentation(info="<html>
<p>
This function returns <i>y</i> = atan(<i>u</i>), with -&infin; &lt; <i>u</i> &lt; &infin;, where <i>y</i> is an angle.
</p>
</html>"));
end atan;
