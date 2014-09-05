within QCalc.Blocks;
block Num2Qty "Convert a number to a quantity using a lambda unit"

  replaceable QCalc.Units.Interfaces.degC u constrainedby
    QCalc.Units.Interfaces.LambdaUnit "Lambda unit"
    annotation (__Dymola_choicesAllMatching=true);

  Modelica.Blocks.Interfaces.RealInput n "Connector for the number" annotation (
     Placement(transformation(extent={{-140,-20},{-100,20}}),
        iconTransformation(extent={{-140,-20},{-100,20}})));
  Modelica.Blocks.Interfaces.RealOutput q "Connector for the quantity"
    annotation (Placement(transformation(extent={{100,-10},{120,10}}),
        iconTransformation(extent={{100,-10},{120,10}})));

equation
  q = n*u;

  annotation (
    structurallyIncomplete=true,
    Documentation(info="<html>
    <p>To convert a number to a quantity using a <a href=\"modelica://QCalc.UsersGuide.Glossary.'scalar unit'\">scalar unit</a>,
    instead use
    <a href=\"modelica://Modelica.Blocks.Math.Gain\">Modelica.Blocks.Math.Gain</a> with <i>k</i>
    set to the unit.</p></html>"),
    Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,
            100}}), graphics={Rectangle(
          extent={{-100,-100},{100,100}},
          lineColor={0,0,127},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),Line(points={{-90,0},{-30,0}}, color={
          191,0,0}),Polygon(
          points={{30,0},{-30,20},{-30,-20},{30,0}},
          lineColor={191,0,0},
          fillColor={191,0,0},
          fillPattern=FillPattern.Solid),Text(
          extent={{-150,150},{150,110}},
          textString="%name",
          lineColor={0,0,255}),Text(
          extent={{30,30},{90,-30}},
          lineColor={114,114,114},
          textString="Q")}));
end Num2Qty;
