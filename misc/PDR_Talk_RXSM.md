## RXSM

### Telemetry
* `19.2 kbit/s` shared
* Ground station (GS) is connected to *SCIENCE-NET*
    * via RS232
    * **or:** direct TCP connection to a dedicted port at serial port server
    * we should implement both, RS232 as falllback
* Telemetry has forward error correction (FEC)
* Telemetry imput: raw serial datastream via RS422
* <64 bytes at a time
* fragmentation -> delay up to ~4ms
* RS422 termination resistor

### Signals
* LO: lift off (fixed, shared for all experiments)
* SOE: start of experiment
* SODS: start of data storage
* SOE, SODS programmable via timeline after liftoff
* SOE, SODS manually activatable before LO
* open collector
    * shared: diode decoupled
    * "active low"
    * max. 50mA
    * unstable after power on -> wait 5 seconds after power on
    * glitches are possible -> debouncing
    * use optocoupler, no anitparallel diode, e.g. PC3H7, connect direct to 28V line
* we need a special rundown sequence because of mechanical state

### Uplink
* only available before LO on RX23 (our rocket)
* use for testing, etc.


## RXSM Power
* resetable fuses in RXSM
    * >3A for >500ms
    * >15A for >10ms
    * -> no own fuses
* max. ripple voltage: 100mV_pp
* 28V nominal voltage
    * on ground: regulated 28V power supply, but long wires -> high inductance
    * during flight: unregulated battery voltage
    * total range: 24V to 36V
* provide good access to power connectors!
* power input:
    * <100µF input capacity
    * EMI supression input filter
    * 100nF at input after filter
    * GND shorted to structure only at one input point

## Cables
* 4A / mm²
