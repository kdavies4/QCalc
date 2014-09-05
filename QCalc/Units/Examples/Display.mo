within QCalc.Units.Examples;
model Display "Demonstrate the display units for the quantities"
  extends Icons.Example;
  ExampleModel doubleClickMe
    annotation (Placement(transformation(extent={{-20,-10},{20,10}})));
  annotation (Commands(executeCall=QCalc.Units.setup()
        "Re-initialize the units."));
end Display;
