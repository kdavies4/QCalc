within QCalc.Math;
function atan3
  "<html>Four quadrant inverse tangent (with solution closest to given angle <i>y</i><sub>0</sub>)</html>"
  extends Modelica.Math.Icons.AxisCenter;

  input Real u1
    annotation (Dialog(__Dymola_label="<html><i>u</i><sub>1</sub></html>"));
  input Real u2
    annotation (Dialog(__Dymola_label="<html><i>u</i><sub>2</sub></html>"));
  input Q.Angle y0=0
    "<html><i>y</i> shall be in the range: -&pi; &lt; <i>y</i> - <i>y</i><sub>0</sub> &le; &pi;</html>"
    annotation (Dialog(__Dymola_label="<html><i>y</i><sub>0</sub></html>"));
  output Q.Angle y annotation (Dialog(__Dymola_label="<html><i>y</i></html>"));

algorithm
  y := atan2(u1, u2);
  if y0 <> 0 then
    y := y + integer((y0 - y)/U.cyc + 0.5)*U.cyc;
  end if;
  // For the default (y0 = 0), return the same result as atan2().

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
          textString="atan3")}),
    Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,
            100}}), graphics={Line(points={{-100,-86},{84,-86}}, color={95,95,
          95}),Polygon(
          points={{98,-86},{82,-80},{82,-92},{98,-86}},
          lineColor={95,95,95},
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid)}),
    Documentation(info="<HTML>
    <p>
    This function returns <i>y</i> = atan2(<i>u</i><sub>1</sub>, <i>u</i><sub>2</sub>, <i>y</i><sub>0</sub>), where <i>y</i> is an angle, 
    such that tan(<i>y</i>) = <i>u</i><sub>1</sub>/<i>u</i><sub>2</sub> and
    <i>y</i> is in the range -&pi;&nbsp;rad &lt; <i>y</i> - <i>y</i><sub>0</sub> &le; &pi;&nbsp;rad. <i>u</i><sub>2</sub> may be zero, provided
    <i>u</i><sub>1</sub> is not zero. 
    </p>
    
    <p>The difference from
    <a href=\"modelica://QCalc.Math.atan2\">atan2</a>() is the optional third argument <i>y</i><sub>0</sub> that
    specifies which of the infinite many solutions is returned.
    Note that for the default case (<i>y</i><sub>0</sub> = 0), the result is the same as from <a href=\"modelica://QCalc.Math.atan2\">atan2</a>().
</p>
</html>"));
end atan3;
