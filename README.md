QCalc
-----

[QCalc] is a free, open-source [Modelica] library to represent quantities using
various units, including but not limited to [SI].  The approach is based on
[quantity calculus] (hence the name "QCalc").

### Usage

In Dymola, it is necessary to turn off unit checking:

    Advanced.CheckUnits = false

This setting is applied in [load.mos](load.mos), which can be used to open the
package.

[QCalc] can be used like this:

    import Q = QCalc.Quantities;
    import U = QCalc.Units;
    Q.Pressure p = U.atm + 50*U.Pa;

Nonscalar units are also supported.  The `*` and `/` operators are overloaded to
call the unit's transformation and its inverse, respectively.  For example, this
will give a value of x = 100:

    Real x = (0*U.degC + 100*U.K)/U.degC;

and this will too:

    Real x = (10/U.dB + 10/U.dB)*U.dB;

since we have multiplied the numbers by adding their logarithms.

The quantities are not directly compatible with the [Modelica Standard Library]
since MSL expresses quantities in [SI] units.  To convert between [QCalc] and
MSL, create an adapter with equations like this:

    p = p_SI*U.Pa;

where `p` is pressure as a quantity (in [QCalc]), `p_SI` is pressure in
[pascal][] (in MSL), and `U.Pa` is
the [pascal] from `QCalc.Units`.

More information is available in the documentation, which can be
accessed [online](http://kdavies4.github.com/QCalc) or
[from the top level of the package](QCalc/package.mo).

### License terms and development

[QCalc] is published under the Modelica License 2 (see the
[User's Guide](http://kdavies4.github.com/QCalc/QCalc_UsersGuide.html#Units.UsersGuide.License)).
Please share any improvements you make, preferably as a pull request to the
``master`` branch of the [GitHub repository].  If you find a bug, have a
suggestion, or just want to leave a comment, please
[open an issue](https://github.com/kdavies4/QCalc/issues/new).


[QCalc]: http://kdavies4.github.io/QCalc/
[Modelica]: https://www.modelica.org/
[SI]: http://en.wikipedia.org/wiki/International_System_of_Units
[quantity calculus]: http://en.wikipedia.org/wiki/Quantity_calculus
[Modelica Standard Library]: https://github.com/modelica/Modelica
[pascal]: http://en.wikipedia.org//wiki/Pascal_(unit)
[GitHub repository]: https://github.com/kdavies4/QCalc
