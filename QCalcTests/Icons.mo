within QCalcTests;
package Icons "Package of icons"
  extends QCalc.Icons.Package;

  partial package TestPackage "Icon for a test package"
    extends QCalc.Icons.Package;

    annotation (Icon(graphics={Polygon(
            points={{-70,0},{-44,0},{-24,-34},{50,56},{78,56},{-24,-74},{-70,0}},

            lineColor={75,138,73},
            smooth=Smooth.None,
            fillColor={75,138,73},
            fillPattern=FillPattern.Solid)}));

  end TestPackage;
end Icons;
