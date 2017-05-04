# Configuration temperature sensors

## Calculation of accuracy

Requirements:
```
dT = 0.5°C in a range of -80°C to 0°C
dT = 0.1°C in a range of -80°C to 0°C if possible
```

#### Class B
```
dT = ± (0.30°C + 0.005 * |T|)
dT = ± (0.7°C)
```

#### Class A
```
dT = ± (0.15°C + 0.002 * |T|)
dT = ± (0.31°C)
```

#### Class AA
```
dT = ± (0.10°C + 0.0017 * |T|)
dT = ± (0.236°C)
```

#### Class 1/10 B
```
dT = ± (0.1*(0.30°C + 0.005 * |T|)
dT = ± (0.07°C)
```

=> Class A and AA fulfill the requirement, Class 1/10 B would be great

### Quantity
* 9 sensors per iceblock
* 27 sensors per ISCA
* We have two ISCAs in reserve, one for the flight. 
* 81 sensors are necessary
    * We will order 100 sensors, 81 mounted, 19 for testing and replacement

### Costs

Sensors by Omega can be custom made.
A sensor that might fit would be *P-M-1/10-2-5-M6x1* for 99€ each.

This sensor and alternatives will be discussed (PT100; 1/10 Class B; 2mm diameter; 5mm length; M6-1 screw mount).
