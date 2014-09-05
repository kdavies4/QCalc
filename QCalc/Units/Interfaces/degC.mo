within QCalc.Units.Interfaces;
operator record degC "degree Celsius (degC)"
  extends LambdaUnit(redeclare type Quantity = Quantities.Temperature);

  operator '*' "Multiplication is overloaded to map a number to a quantity"

    function num2qty "Convert a number to a quantity"

      input Real n "Number";
      input degC selfDummy "2nd argument is the unit itself; contains no data";
      output Quantity q "Quantity";

    algorithm
      q := (n + 273.15)*K;
      annotation (Inline=true, inverse(n='/'.qty2num(q, selfDummy)));
    end num2qty;

  end '*';

  operator '/' "Division is overloaded to map a quantity to a number"

    function qty2num "Convert a quantity to a number"

      input Quantity q "Quantity";
      input degC selfDummy "2nd argument is the unit itself; contains no data";
      output Real n "Number";

    algorithm
      n := q/K - 273.15;
      annotation (Inline=true, inverse(q='*'.num2qty(n, selfDummy)));
    end qty2num;

  end '/';

end degC;
