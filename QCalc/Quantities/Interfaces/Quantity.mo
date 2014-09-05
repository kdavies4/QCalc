within QCalc.Quantities.Interfaces;
type Quantity "Icon for a Quantity (special Real type)"
  extends Real;
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
            {100,100}}), graphics={Rectangle(
          lineColor={160,160,164},
          fillColor={160,160,164},
          fillPattern=FillPattern.Solid,
          extent={{-100,-100},{100,100}},
          radius=25.0), Text(
          lineColor={255,255,255},
          extent={{-90,-50},{90,50}},
          textString="Q")}), Documentation(info="<html>
<p>This icon is designed for a <b>Real</b> type that is used as a physical quantity.</p>
</html>"));
end Quantity;
