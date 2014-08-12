QCalc
-----

[QCalc] is a free, open-source [Modelica] library to represent quantities using
various units, including but not limited to [SI].  The approach is based on
[quantity calculus](http://en.wikipedia.org/wiki/Quantity_calculus) (hence the
name "QCalc").

### Usage

In Dymola, it is necessary to turn off unit checking:

    Advanced.CheckUnits = false

This setting is applied in [load.mos](load.mos), which can be used to open the
package.

[QCalc] can be used like this:

    import Q = QCalc.Quantities;
    import U = QCalc.Units;
    Q.Pressure p = U.atm + 50*U.Pa;

The quantities are not directly compatible with the [Modelica Standard Library]
(MSL) since MSL expresses quantities in [SI] units.  To convert between [QCalc]
and MSL, create an adapter with equations like this:

    p = p_SI*U.Pa;

where `p` is pressure as a quantity (in [QCalc]), `p_SI` is pressure in
[pascal][] (in MSL), and `U.Pa` is
the [pascal] from `QCalc.Units`.

More information is available in the documentation, which can be
accessed [online](http://kdavies4.github.com/QCalc) or from the documentation
layer of the Modelica code (starting at the [top level](QCalc/package.mo)).

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
[Modelica Standard Library]: https://github.com/modelica/Modelica
[pascal]: http://en.wikipedia.org//wiki/Pascal_(unit)
[GitHub repository]: https://github.com/kdavies4/QCalc
