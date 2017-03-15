# Battery charging

We use a 8 cell NiMH battery inside our module.

The battery is charged inside the experiment module through the RXSM charge line, which provides 1A at 28V. Our Battery is charged with 20W.

The battery charge controller is integrated to the *Powerboard* and can be enabled from the Mainboards microcontroller.
A charge status feedback is provided to the microcontroller, too.

For efficiency reasons we use the [Linear LTC4010](http://www.linear.com/product/LTC4010) *High Efficiency Standalone Nickel Battery Charger*. This integrated circuit provides reliable and safe battery charging with only a few additional components.

### Charge current
The charge current is set to 2A according to the [LTC4010s datasheet](http://cds.linear.com/docs/en/datasheet/4010fb.pdf).
```
R_sense = 100mV / I_charge
0.05 ohms = 100mV / 2A
```

### Battery cut-off
The battery is always disconnected from the load while RXSM power is not available.
For technical reasons the charging circuit is not disconnected, but is only charging circuit only enabled and connected while the RXSM charge line is powered.
To charge the battery both RXSM power line and charge line have to be powered on because the microcontroller must enable the battery charging circuit.
