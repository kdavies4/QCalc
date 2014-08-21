within QCalc;
package Blocks "Imperative models to convert units"
  extends QCalc.Icons.Package;
  block Num2Qty "Convert a number to a quantity using a lambda unit"

    replaceable QCalc.Units.Interfaces.degC u constrainedby
      QCalc.Units.Interfaces.LambdaUnit "Lambda unit"
      annotation (__Dymola_choicesAllMatching=true);

    Modelica.Blocks.Interfaces.RealInput n "Connector for the number"
      annotation (Placement(transformation(extent={{-140,-20},{-100,20}},
            rotation=0), iconTransformation(extent={{-140,-20},{-100,20}})));
    Modelica.Blocks.Interfaces.RealOutput q "Connector for the quantity"
      annotation (Placement(transformation(extent={{100,-10},{120,10}},
            rotation=0), iconTransformation(extent={{100,-10},{120,10}})));

  equation
    q = n*u;

    annotation (
      structurallyIncomplete=true,
      Documentation(info="<html>
    <p>To convert a number to a quantity using a <a href=\"modelica://QCalc.UsersGuide.Glossary.'linear unit'\">linear unit</a>,
    instead use
    <a href=\"modelica://Modelica.Blocks.Math.Gain\">Modelica.Blocks.Math.Gain</a> with <i>k</i>
    set to the unit.</p></html>"),
      Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,
              100}}), graphics={
          Rectangle(
            extent={{-100,-100},{100,100}},
            lineColor={0,0,127},
            fillColor={255,255,255},
            fillPattern=FillPattern.Solid),
          Line(points={{-90,0},{-30,0}},color={191,0,0}),
          Polygon(
            points={{30,0},{-30,20},{-30,-20},{30,0}},
            lineColor={191,0,0},
            fillColor={191,0,0},
            fillPattern=FillPattern.Solid),
          Text(
            extent={{-150,150},{150,110}},
            textString="%name",
            lineColor={0,0,255}),
          Text(
            extent={{30,30},{90,-30}},
            lineColor={114,114,114},
            textString="Q")}));
  end Num2Qty;

  block Qty2Num "Convert a quantity to a number using a lambda unit"

    replaceable QCalc.Units.Interfaces.degC u constrainedby
      QCalc.Units.Interfaces.LambdaUnit "Lambda unit"
      annotation (__Dymola_choicesAllMatching=true);

    Modelica.Blocks.Interfaces.RealInput q "Connector for the quantity"
      annotation (Placement(transformation(extent={{-140,-20},{-100,20}},
            rotation=0), iconTransformation(extent={{-140,-20},{-100,20}})));
    Modelica.Blocks.Interfaces.RealOutput n "Connector for the number"
      annotation (Placement(transformation(extent={{100,-10},{120,10}},
            rotation=0), iconTransformation(extent={{100,-10},{120,10}})));

  equation
    q = n*u;

    annotation (
      structurallyIncomplete=true,
      Documentation(info="<html>
    <p>To convert a quantity to a number using a <a href=\"modelica://QCalc.UsersGuide.Glossary.'linear unit'\">linear unit</a>,
    instead use
    <a href=\"modelica://Modelica.Blocks.Math.Gain\">Modelica.Blocks.Math.Gain</a> with <i>k</i>
    set to the reciprocal of the unit.</p></html>"),
      Icon(graphics={
          Rectangle(
            extent={{-100,-100},{100,100}},
            lineColor={0,0,127},
            fillColor={255,255,255},
            fillPattern=FillPattern.Solid),
          Text(
            extent={{-150,150},{150,110}},
            textString="%name",
            lineColor={0,0,255}),
          Line(points={{-90,0},{-30,0}},color={191,0,0}),
          Text(
            extent={{30,30},{90,-30}},
            lineColor={114,114,114},
            textString="N"),
          Polygon(
            points={{30,0},{-30,20},{-30,-20},{30,0}},
            lineColor={191,0,0},
            fillColor={191,0,0},
            fillPattern=FillPattern.Solid)}));
  end Qty2Num;
  annotation (Documentation(info="
<html>
<p><b>Licensed by the Hawaii Natural Energy Institute under the Modelica
License 2</b><br> Copyright &copy; 2009&ndash;2014, <a href=\"
http://www.hnei.hawaii.edu/\">Hawaii Natural Energy Institute</a> and <a
href=\"http://www.gtrc.gatech.edu/\">Georgia Tech Research
Corporation</a>.</p>

<p><i>This Modelica package is <u>free</u> software and the use is
completely at <u>your own risk</u>; it can be redistributed and/or
modified under the terms of the Modelica License 2. For license conditions
(including the disclaimer of warranty) see <a href=\"modelica://QCalc.UsersGuide.License\">QCalc.UsersGuide.License</a> or
visit <a href=\"http://www.modelica.org/licenses/ModelicaLicense2\">http://www.modelica.org/licenses/ModelicaLicense2</a>.</i></p>
</html>"), Icon(graphics={
        Rectangle(
          origin={0,35.1488},
          fillColor={255,255,255},
          extent={{-30.0,-20.1488},{30.0,20.1488}}),
        Line(origin={51.25,0}, points={{-21.25,35.0},{13.75,35.0},{13.75,-35.0},
              {-6.25,-35.0}}),
        Rectangle(
          origin={0,-34.8512},
          fillColor={255,255,255},
          extent={{-30.0,-20.1488},{30.0,20.1488}}),
        Line(origin={-51.25,0}, points={{21.25,-35.0},{-13.75,-35.0},{-13.75,
              35.0},{6.25,35.0}}),
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
