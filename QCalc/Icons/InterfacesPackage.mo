within QCalc.Icons;
partial package InterfacesPackage
  "Icon for packages containing interfaces (from MSL 3.2.1)"
// extends Modelica.Icons.Package;

annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
          {100,100}}), graphics={
      Rectangle(
        extent={{-80,100},{100,-80}},
        lineColor={0,0,0},
        fillColor={215,230,240},
        fillPattern=FillPattern.Solid),
      Rectangle(
        extent={{-100,80},{80,-100}},
        lineColor={0,0,0},
        fillColor={240,240,240},
        fillPattern=FillPattern.Solid),
      Polygon(
        points={{0,50},{20,50},{50,10},{80,10},{80,-30},{50,-30},{20,-70},{0,-70},
            {0,50}},
        lineColor={0,0,0},
        smooth=Smooth.None,
        fillColor={215,215,215},
        fillPattern=FillPattern.Solid),
      Polygon(
        points={{-100,10},{-70,10},{-40,50},{-20,50},{-20,-70},{-40,-70},{-70,-30},
            {-100,-30},{-100,10}},
        lineColor={0,0,0},
        smooth=Smooth.None,
        fillColor={215,230,240},
        fillPattern=FillPattern.Solid)}), Documentation(info="<html>
<p>This icon indicates packages containing interfaces.</p>
</html>"));
end InterfacesPackage;
