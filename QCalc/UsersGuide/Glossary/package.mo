within QCalc.UsersGuide;
package Glossary "Glossary"
extends Icons.Information;


class 'lambda unit'
  "<html>an invertible function that maps a number to a <a href=\"modelica://QCalc.UsersGuide.Glossary.'quantity'\">quantity</a> and vice versa</html>"

  annotation (
    preferredView="info",
    DocumentationClass=false,
    Documentation(info=
          "<html><p>The function is not limited to multiplication.</p></html>"));
end 'lambda unit';


class 'lineic'
  "<html>adjective that indicates the quotient of the following <a href=\"modelica://QCalc.UsersGuide.Glossary.'quantity'\">quantity</a> and its associated length [&times;&nbsp;L<sup>-1</sup>]</html>"

  annotation (preferredView="info", DocumentationClass=false);
end 'lineic';


class 'massic'
  "<html>adjective that indicates the quotient of the following <a href=\"modelica://QCalc.UsersGuide.Glossary.'quantity'\">quantity</a> and its associated mass [&times;&nbsp;M<sup>-1</sup>]</html>"

  annotation (preferredView="info", DocumentationClass=false);
end 'massic';


class 'quantity' "<html>\"property of a phenomenon, body, or substance,
where the property has a magnitude that can be
expressed as a number and a reference\" [<a href=\"modelica://QCalc.UsersGuide.References.JCGM2012\">JCGM2012</a>]</html>"

  annotation (preferredView="info", DocumentationClass=false);
end 'quantity';


class 'scalar unit' "<html>a reference <a href=\"modelica://QCalc.UsersGuide.Glossary.'quantity'\">quantity</a> that is used via multiplication to map
  a number to another quantity</html>"

  annotation (preferredView="info", DocumentationClass=false);
end 'scalar unit';


class 'specific'
  "<html>adjective that indicates the quotient of the following <a href=\"modelica://QCalc.UsersGuide.Glossary.'quantity'\">quantity</a> and its associated amount of substance [&times;&nbsp;N<sup>-1</sup>]</html>"

  annotation (
    preferredView="info",
    DocumentationClass=false,
    Documentation(info="<html><p>Note that that unlike the usual definition, \"specific\" 
    does not indicate the quotient of a quantity and its associated mass; it is not synonymous with 
    \"massic.\"
    Also, since the quantities are written as if the 
    <a href=\"http://en.wikipedia.org/wiki/Faraday_constant\">Faraday constant</a> 
    is nondimensionalized (see <a href=\"modelica://QCalc.Quantities\">Quantities</a>), 
    charge is an amount of substance and \"specific\"
    is equivalent to \"per charge.\"</p></html>"));
end 'specific';


class 'unit'
  "<html>an entity that is used to map a number to a <a href=\"modelica://QCalc.UsersGuide.Glossary.'quantity'\">quantity</a> and vice versa</html>"

  annotation (preferredView="info", DocumentationClass=false);
end 'unit';


class 'volumic'
  "<html>adjective that indicates the quotient of the following <a href=\"modelica://QCalc.UsersGuide.Glossary.'quantity'\">quantity</a> and its associated volume [&times;&nbsp;L<sup>-3</sup>]</html>"

  annotation (
    preferredView="info",
    DocumentationClass=false,
    Documentation(info=
          "<html><p>Example: volumic mass [M L<sup>-3</sup>]</p></html>"));

end 'volumic';


annotation (preferredView="info", Documentation(info="<html><p>Below are some terms used in
  <a href=\"modelica://QCalc\">QCalc</a>. All of the terms have the usual definitions
  except for <a href=\"modelica://QCalc.UsersGuide.Glossary.'specific'\">specific</a>.
  The term <a href=\"modelica://QCalc.UsersGuide.Glossary.'lambda unit'\">lambda unit</a>
  is new.</p></html>"));
end Glossary;
