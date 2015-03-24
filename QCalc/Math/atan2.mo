within QCalc.Math;
function atan2 "Four quadrant inverse tangent"
  extends Modelica.Math.Icons.AxisCenter;

  input Real u1
    annotation (Dialog(__Dymola_label="<html><i>u</i><sub>1</sub></html>"));
  input Real u2
    annotation (Dialog(__Dymola_label="<html><i>u</i><sub>2</sub></html>"));
  output Q.Angle y annotation (Dialog(__Dymola_label="<html><i>y</i></html>"));

algorithm
  y := Modelica.Math.atan2(u1, u2)*U.rad;

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
        Line(points={{0,-80},{8.93,-67.2},{17.1,-59.3},{27.3,-53.6},{42.1,-49.4},
              {69.9,-45.8},{80,-45.1}}, color={0,0,0}),
        Line(points={{-80,-34.9},{-46.1,-31.4},{-29.4,-27.1},{-18.3,-21.5},{-10.3,
              -14.5},{-2.03,-3.17},{7.97,11.6},{15.5,19.4},{24.3,25},{39,30},{
              62.1,33.5},{80,34.9}}, color={0,0,0}),
        Line(points={{-80,45.1},{-45.9,48.7},{-29.1,52.9},{-18.1,58.6},{-10.2,
              65.8},{-1.82,77.2},{0,80}}, color={0,0,0}),
        Text(
          extent={{-90,-46},{-18,-94}},
          lineColor={192,192,192},
          textString="atan2")}),
    Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,
            100}}), graphics={Line(points={{-100,0},{84,0}}, color={95,95,95}),
          Polygon(
          points={{96,0},{80,6},{80,-6},{96,0}},
          lineColor={95,95,95},
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid)}),
    Documentation(info="<HTML>
    <p>
This function returns <i>y</i> = atan2(<i>u</i><sub>1</sub>, <i>u</i><sub>2</sub>), where <i>y</i> is an angle, such that tan(<i>y</i>) = <i>u</i><sub>1</sub>/<i>u</i><sub>2</sub> and
<i>y</i> is in the range -&pi;&nbsp;rad &lt; <i>y</i> &le; &pi;&nbsp;rad. <i>u</i><sub>2</sub> may be zero, provided
<i>u</i><sub>1</sub> is not zero. Usually <i>u</i><sub>1</sub>, <i>u</i><sub>2</sub> is provided in such a form that
<i>u</i><sub>1</sub> = sin(<i>y</i>) and <i>u</i><sub>2</sub> = cos(<i>y</i>).
</p>

</html>"));
end atan2;
