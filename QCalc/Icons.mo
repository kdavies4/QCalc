within QCalc;
package Icons "Package of icons"
  extends Icons.Package;

  partial block Block
    "Basic graphical layout of input/output block (from MSL 3.2.1)"

    annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
              {100,100}}), graphics={Rectangle(
              extent={{-100,-100},{100,100}},
              lineColor={0,0,127},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),Text(
              extent={{-150,150},{150,110}},
              textString="%name",
              lineColor={0,0,255})}), Documentation(info="<html>
<p>
Block that has only the basic icon for an input/output
block (no declarations, no equations). Most blocks
of package Modelica.Blocks inherit directly or indirectly
from this block.
</p>
</html>"));

  end Block;

  partial class Contact "Icon for contact information (from MSL 3.2.1)"

    annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
              -100},{100,100}}), graphics={Rectangle(
              extent={{-100,70},{100,-72}},
              lineColor={0,0,0},
              fillColor={235,235,235},
              fillPattern=FillPattern.Solid),Polygon(
              points={{-100,-72},{100,-72},{0,20},{-100,-72}},
              lineColor={0,0,0},
              smooth=Smooth.None,
              fillColor={215,215,215},
              fillPattern=FillPattern.Solid),Polygon(
              points={{22,0},{100,70},{100,-72},{22,0}},
              lineColor={0,0,0},
              smooth=Smooth.None,
              fillColor={235,235,235},
              fillPattern=FillPattern.Solid),Polygon(
              points={{-100,70},{100,70},{0,-20},{-100,70}},
              lineColor={0,0,0},
              smooth=Smooth.None,
              fillColor={241,241,241},
              fillPattern=FillPattern.Solid)}), Documentation(info="<html>
<p>This icon shall be used for the contact information of the library developers.</p>
</html>"));
  end Contact;

  partial model Example "Icon for runnable examples (from MSL 3.2.1)"

    annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
              -100},{100,100}}), graphics={Ellipse(
              lineColor={75,138,73},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid,
              extent={{-100,-100},{100,100}}),Polygon(
              lineColor={0,0,255},
              fillColor={75,138,73},
              pattern=LinePattern.None,
              fillPattern=FillPattern.Solid,
              points={{-36,60},{64,0},{-36,-60},{-36,60}})}), Documentation(
          info="<html>
<p>This icon indicates an example. The play button suggests that the example can be executed.</p>
</html>"));
  end Example;

  partial package ExamplesPackage
    "Icon for packages containing runnable examples (from MSL 3.2.1)"
    extends Package;
    annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
              -100},{100,100}}), graphics={Polygon(
            origin={8.0,14.0},
            lineColor={78,138,73},
            fillColor={78,138,73},
            pattern=LinePattern.None,
            fillPattern=FillPattern.Solid,
            points={{-58.0,46.0},{42.0,-14.0},{-58.0,-74.0},{-58.0,46.0}})}),
        Documentation(info="<html>
<p>This icon indicates a package that contains executable examples.</p>
</html>"));
  end ExamplesPackage;

  partial function Function "Icon for functions (from MSL 3.2.1)"

    annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
              -100},{100,100}}), graphics={
          Text(
            lineColor={0,0,255},
            extent={{-150,105},{150,145}},
            textString="%name"),
          Ellipse(
            lineColor={108,88,49},
            fillColor={255,215,136},
            fillPattern=FillPattern.Solid,
            extent={{-100,-100},{100,100}}),
          Text(
            lineColor={108,88,49},
            extent={{-90.0,-90.0},{90.0,90.0}},
            textString="f")}), Documentation(info="<html>
<p>This icon indicates Modelica functions.</p>
</html>"));
  end Function;

  partial class Information
    "Icon for general information packages (from MSL 3.2.1)"

    annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
              -100},{100,100}}), graphics={
          Ellipse(
            lineColor={75,138,73},
            fillColor={75,138,73},
            pattern=LinePattern.None,
            fillPattern=FillPattern.Solid,
            extent={{-100.0,-100.0},{100.0,100.0}}),
          Polygon(
            origin={-4.167,-15.0},
            fillColor={255,255,255},
            pattern=LinePattern.None,
            fillPattern=FillPattern.Solid,
            points={{-15.833,20.0},{-15.833,30.0},{14.167,40.0},{24.167,20.0},{
                4.167,-30.0},{14.167,-30.0},{24.167,-30.0},{24.167,-40.0},{-5.833,
                -50.0},{-15.833,-30.0},{4.167,20.0},{-5.833,20.0}},
            smooth=Smooth.Bezier),
          Ellipse(
            origin={7.5,56.5},
            fillColor={255,255,255},
            pattern=LinePattern.None,
            fillPattern=FillPattern.Solid,
            extent={{-12.5,-12.5},{12.5,12.5}})}), Documentation(info="<html>
<p>This icon indicate classes containing only documentation, intended for general description of, e.g., concepts and features of a package.</p>
</html>"));
  end Information;

  partial package InterfacesPackage
    "Icon for packages containing interfaces (from MSL 3.2.1)"
    //extends Modelica.Icons.Package;
    annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
              -100},{100,100}}), graphics={
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
            points={{0,50},{20,50},{50,10},{80,10},{80,-30},{50,-30},{20,-70},{
                0,-70},{0,50}},
            lineColor={0,0,0},
            smooth=Smooth.None,
            fillColor={215,215,215},
            fillPattern=FillPattern.Solid),
          Polygon(
            points={{-100,10},{-70,10},{-40,50},{-20,50},{-20,-70},{-40,-70},{-70,
                -30},{-100,-30},{-100,10}},
            lineColor={0,0,0},
            smooth=Smooth.None,
            fillColor={215,230,240},
            fillPattern=FillPattern.Solid)}), Documentation(info="<html>
<p>This icon indicates packages containing interfaces.</p>
</html>"));
  end InterfacesPackage;

  partial package Package "Icon for standard packages (from MSL 3.2.1)"

    annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
              -100},{100,100}}), graphics={Rectangle(
            lineColor={200,200,200},
            fillColor={248,248,248},
            fillPattern=FillPattern.HorizontalCylinder,
            extent={{-100.0,-100.0},{100.0,100.0}},
            radius=25.0), Rectangle(
            lineColor={128,128,128},
            fillPattern=FillPattern.None,
            extent={{-100.0,-100.0},{100.0,100.0}},
            radius=25.0)}), Documentation(info="<html>
<p>Standard package icon.</p>
</html>"));
  end Package;

  partial record Record "Icon for records (from MSL 3.2.1)"

    annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
              {100,100}}), graphics={Text(
              lineColor={0,0,255},
              extent={{-150,60},{150,100}},
              textString="%name"),Rectangle(
              origin={0.0,-25.0},
              lineColor={64,64,64},
              fillColor={255,215,136},
              fillPattern=FillPattern.Solid,
              extent={{-100.0,-75.0},{100.0,75.0}},
              radius=25.0),Line(points={{-100.0,0.0},{100.0,0.0}}, color={64,64,
            64}),Line(
              origin={0.0,-50.0},
              points={{-100.0,0.0},{100.0,0.0}},
              color={64,64,64}),Line(
              origin={0.0,-25.0},
              points={{0.0,75.0},{0.0,-75.0}},
              color={64,64,64})}), Documentation(info="<html>
<p>
This icon is indicates a record.
</p>
</html>"));
  end Record;

  partial class References "Icon for external references (from MSL 3.2.1)"

    annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
              -100},{100,100}}), graphics={Polygon(
              points={{-100,-80},{-100,60},{-80,54},{-80,80},{-40,58},{-40,100},
              {-10,60},{90,60},{100,40},{100,-100},{-20,-100},{-100,-80}},
              lineColor={0,0,255},
              pattern=LinePattern.None,
              fillColor={245,245,245},
              fillPattern=FillPattern.Solid),Polygon(points={{-20,-100},{-10,-80},
            {90,-80},{100,-100},{-20,-100}}, lineColor={0,0,0}),Line(points={{
            90,-80},{90,60},{100,40},{100,-100}}, color={0,0,0}),Line(points={{
            90,60},{-10,60},{-10,-80}}, color={0,0,0}),Line(points={{-10,60},{-40,
            100},{-40,-40},{-10,-80},{-10,60}}, color={0,0,0}),Line(points={{-20,
            -88},{-80,-60},{-80,80},{-40,58}}, color={0,0,0}),Line(points={{-20,
            -100},{-100,-80},{-100,60},{-80,54}}, color={0,0,0}),Line(points={{
            10,30},{72,30}}, color={0,0,0}),Line(points={{10,-10},{70,-10}},
            color={0,0,0}),Line(points={{10,-50},{70,-50}}, color={0,0,0})}),
        Documentation(info="<html>
<p>This icon indicates a documentation class containing references external documentation and literature.</p>
</html>"));

  end References;

  partial class ReleaseNotes
    "Icon for release notes in documentation (from MSL 3.2.1)"

    annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
              -100},{100,100}}), graphics={Polygon(
              points={{-80,-100},{-80,100},{0,100},{0,20},{80,20},{80,-100},{-80,
              -100}},
              lineColor={0,0,0},
              fillColor={245,245,245},
              fillPattern=FillPattern.Solid),Polygon(
              points={{0,100},{80,20},{0,20},{0,100}},
              lineColor={0,0,0},
              fillColor={215,215,215},
              fillPattern=FillPattern.Solid),Line(points={{2,-12},{50,-12}},
            color={0,0,0}),Ellipse(
              extent={{-56,2},{-28,-26}},
              lineColor={0,0,0},
              fillColor={215,215,215},
              fillPattern=FillPattern.Solid),Line(points={{2,-60},{50,-60}},
            color={0,0,0}),Ellipse(
              extent={{-56,-46},{-28,-74}},
              lineColor={0,0,0},
              fillColor={215,215,215},
              fillPattern=FillPattern.Solid)}), Documentation(info="<html>
<p>This icon indicates release notes and the revision history of a library.</p>
</html>"));

  end ReleaseNotes;

end Icons;
