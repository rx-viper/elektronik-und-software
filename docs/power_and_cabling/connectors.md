# Connectors

## List of connectors in experiment

**Where | type | size | necessary**
* ISCA temperature sensors to mainboard | 2x D-SUB HD (44 + 62 pin) | 27x4 cables, but each 6 sensors could share 1 cable -> 86 pins | yes
* RXSM connector | DSUB-15 | 15 | yes
* Battery connector to powerboard | no? | 2x high-current + temperature sensors (5 pins) | we could solder the battery to the powerboard
* powerboard to mainboard | D-SUB (HD?) 26 or 37 pin | about 20 | yes
* Coupola (sensors) to mainboard | D-SUB (HD?) | approx. 15 | yes
* Coupola (cameras) to Raspberry Pi CM3 board | D-SUB (HD?) | <15 | yes
* Coupola (heat probes, light) to powerboard | D-SUB (?), multiple pins parallel | 6x high-current, 2x light | yes


## Available connectors

* D-SUB HD (high density) 15..78 pins; [Harting](http://www.harting.de/fileadmin/harting/documents/public/catalogue/interface_11_7_d/Interface_11_7_D_03_D-Sub-High-Density-Steckverbinder.pdf)
* D-SUB 9..50 pins
* high current: D-SUB multiple pins parallel
