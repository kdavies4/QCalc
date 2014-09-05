within QCalc.Units.Examples;
model ExampleModel "Model that uses all of the quantities"

  extends Icons.Block;

  // Generated from QCalc/Resources/quantities.xlsx, 2014-8-22
  parameter Q.Acceleration Acceleration=1*Gal "Acceleration";
  parameter Q.Amount Amount=1*mol "Amount";
  parameter Q.AmountReciprocal AmountReciprocal=1/C "Reciprocal of amount";
  parameter Q.Angle Angle=1*rad "Angle";
  parameter Q.Angle2 Angle2=1*sr "Solid angle";
  parameter Q.Area Area=1*b "Area";
  parameter Q.Capacitance Capacitance=1*F "Capacitance";
  parameter Q.Concentration Concentration=1*M "Concentration";
  parameter Q.Conductance Conductance=1*S "Conductance";
  parameter Q.Current Current=1*A "Current";
  parameter Q.Diffusivity Diffusivity=1*St "Diffusivity";
  parameter Q.Energy Energy=1*J "Energy";
  parameter Q.Force Force=1*N "Force";
  parameter Q.Frequency Frequency=1*Hz "Frequency";
  parameter Q.Illuminance Illuminance=1*lm "Illuminance";
  parameter Q.Inductance Inductance=1*H "Inductance";
  parameter Q.Length Length=1*m "Length";
  parameter Q.LengthSpecific LengthSpecific=1*m/C "Specific length";
  parameter Q.LengthSpecificMassSpecific LengthSpecificMassSpecific=1*H/m
    "Specific length times specific mass";
  parameter Q.Luminance Luminance=1*sb "Luminance";
  parameter Q.LuminousEmittance LuminousEmittance=1*lx "Luminous emittance";
  parameter Q.LuminousIntensity LuminousIntensity=1*cd "Luminous intensity";
  parameter Q.MagneticDipoleMoment MagneticDipoleMoment=1*J/T
    "Magnetic dipole moment";
  parameter Q.MagneticFieldAux MagneticFieldAux=1*AT/m
    "Auxiliary magnetic field";
  parameter Q.MagneticFlux MagneticFlux=1*Wb "Magnetic flux";
  parameter Q.MagneticFluxAreic MagneticFluxAreic=1*T "Areic magnetic flux";
  parameter Q.MagneticFluxReciprocal MagneticFluxReciprocal=1/Wb
    "Reciprocal of magnetic flux";
  parameter Q.MagneticFluxSpecific MagneticFluxSpecific=1*Wb/C
    "Specific magnetic flux";
  parameter Q.MagnetomotiveForce MagnetomotiveForce=1*AT "Magnetomotive force";
  parameter Q.Mass Mass=1*kg "Mass";
  parameter Q.MassSpecific MassSpecific=1*g/mol "Specific mass";
  parameter Q.MomentumRotational MomentumRotational=1*J/Hz
    "Rotational momentum";
  parameter Q.Number Number=1 "Number";
  parameter Q.Permeability Permeability=1*Wb/(AT*m) "Permeability";
  parameter Q.Permittivity Permittivity=1*F/m "Permittivity";
  parameter Q.PermittivityReciprocal PermittivityReciprocal=1*m/F
    "Reciprocal of permittivity";
  parameter Q.Potential Potential=1*V "Potential";
  parameter Q.PotentialPerWavenumber PotentialPerWavenumber=1*V*m/rad
    "Potential per wavenumber";
  parameter Q.Power Power=1*W "Power";
  parameter Q.PowerArea PowerArea=1*W*m^2 "Power times area";
  parameter Q.PowerAreic PowerAreic=1*W/m^2 "Areic power";
  parameter Q.PowerAreicPerPotential4 PowerAreicPerPotential4=1*W/(m^2*K^4)
    "Areic power per 4th power of potential";
  parameter Q.Pressure Pressure=1*Pa "Pressure";
  parameter Q.PressureLineic PressureLineic=1*Pa/m "Lineic pressure";
  parameter Q.Resistance Resistance=1*ohm "Resistance";
  parameter Q.Time Time=1*s "Time";
  parameter Q.TimeReciprocal TimeReciprocal=1*Bq "Reciprocal of time";
  parameter Q.Velocity Velocity=1*m/s "Velocity";
  parameter Q.Velocity2 Velocity2=1*Sv "Squared velocity";
  parameter Q.Viscosity Viscosity=1*Pa*s/1 "Viscosity";
  parameter Q.Volume Volume=1*m^3 "Volume";
  parameter Q.Wavelength Wavelength=1*m/cyc "Wavelength";
  parameter Q.WavelengthVelocity WavelengthVelocity=1*m^2/(cyc*s)
    "Wavelength times velocity";
  parameter Q.Wavenumber Wavenumber=1*cyc/m "Wavenumber";
  // -------- end from QCalc/Resources/quantities.xlsx
  annotation (Commands(executeCall=QCalc.Units.setup()
        "Re-initialize the units."));
end ExampleModel;
